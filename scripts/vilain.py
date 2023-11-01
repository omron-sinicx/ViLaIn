#!/usr/bin/env python

from typing import List, Tuple
from collections import defaultdict
import os
import subprocess
import re
import glob
from PIL import Image

import torch
from torchvision.ops import box_convert
from transformers import Blip2Processor, Blip2ForConditionalGeneration
import openai
import groundingdino.util.inference as gdino_inference
import groundingdino.util.vl_utils as gdino_vl_utils

from utils import get_text_query, create_bbox_annotations

openai.api_key = os.environ["OPENAI_API_KEY"]


class ViLaIn:
    def __init__(
        self,
        args,
    ):
        self.args = args

        # load grounding-dino for object detection and blip2 for captioning
        if args.predict_bboxes:
            # object detection
            self.grounding_dino = gdino_inference.load_model(
                f"{args.grounding_dino_dir}/groundingdino/config/GroundingDINO_SwinB_cfg.py", 
                f"{args.grounding_dino_dir}/weights/groundingdino_swinb_cogcoor.pth",
            ).to("cuda")

            # captioning
            self.blip2_processor = Blip2Processor.from_pretrained("Salesforce/blip2-flan-t5-xl")
            self.blip2 = Blip2ForConditionalGeneration.from_pretrained(
                "Salesforce/blip2-flan-t5-xl",
                torch_dtype=torch.float16,
            ).to("cuda")
        else:
            self.grounding_dino = None
            self.blip2_processor = None
            self.blip2 = None
        
    # detect objects from an image
    def detect_objects(
        self,
        domain_name: str,
        image_path: str,
    ):
        def get_grounding_output(
            image,
            caption,
            box_threshold,
            text_threshold,
            token_spans: List[List[List[int]]],
        ):
            assert text_threshold is not None or token_spans is not None, "text_threshould and token_spans should not be None at the same time!"
            caption = caption.lower().strip()
            image = image.to("cuda")

            with torch.no_grad():
                outputs = self.grounding_dino(image[None], captions=[caption])

            logits = outputs["pred_logits"].sigmoid()[0]  
            boxes = outputs["pred_boxes"][0] 

            positive_maps = gdino_vl_utils.create_positive_map_from_span(
                self.grounding_dino.tokenizer(caption),
                token_span=token_spans
            ).to("cuda")

            logits_for_phrases = positive_maps @ logits.T 
            all_logits = []
            all_phrases = []
            all_boxes = []
            for (token_span, logit_phr) in zip(token_spans, logits_for_phrases):
                phrase = ' '.join([caption[_s:_e] for (_s, _e) in token_span])
                filt_mask = logit_phr > box_threshold
                all_boxes.append(boxes[filt_mask])
                all_logits.append(logit_phr[filt_mask])

                logit_phr_num = logit_phr[filt_mask]
                all_phrases.extend([phrase for _ in logit_phr_num])

            boxes_filt = torch.cat(all_boxes, dim=0).cpu()
            pred_phrases = all_phrases

            return boxes_filt, pred_phrases

        image_source, image = gdino_inference.load_image(image_path)
        src_w, src_h = image_source.shape[:2]

        text_query, phrase2object, token_spans = get_text_query(domain_name)

        boxes, phrases = get_grounding_output(
            image,
            caption=text_query,
            box_threshold=self.args.box_threshold,
            text_threshold=self.args.text_threshold,
            token_spans=token_spans,
        )

        detected_objects = []
        for phrase in phrases:
            phrase = phrase.replace(" ", "_")

            if phrase2object is not None and \
               phrase in phrase2object.keys():

                detected_objects += [phrase2object[phrase]]
            else:
                detected_objects += [phrase]

        boxes = boxes * torch.Tensor([src_w, src_h, src_w, src_h])

        boxes = box_convert(
            boxes=boxes,
            in_fmt="cxcywh",
            out_fmt="xyxy",
        )

        bbox_anns = create_bbox_annotations(
            domain_name, 
            boxes, 
            detected_objects,
            phrases,
        )

        return bbox_anns

    # generate captions for objects in an image
    def generate_captions(
        self,
        image_path: str, 
        bbox_anns: dict,
    ):
        image = Image.open(image_path).convert("RGB")

        for obj in bbox_anns.keys():
            box = bbox_anns[obj]["bbox"]
            phrase = bbox_anns[obj]["phrase"]

            blip2_inputs = self.blip2_processor(
                image.crop(box),
                text=f"Question: describe this {phrase}? Answer:", 
                return_tensors="pt",
            ).to("cuda", torch.float16)

            generated_ids = self.blip2.generate(
                **blip2_inputs, 
                max_new_tokens=128,
            )

            generated_text = self.blip2_processor.decode(
                generated_ids[0], 
                skip_special_tokens=True,
            )

            bbox_anns[obj]["caption"] = generated_text

        return bbox_anns

    # generate PDDL initial state or goal specification
    def generate_problem(
        self,
        target: dict,
        examples: List[dict],
        gen_type: str, # initial_state or goal_specification
        domain_name: str=None, # required for pddl object
    ):
        num_examples = len(examples)

        if gen_type == "objects":
            generated_pddl = "(:objects\n"

            if domain_name == "blocksworld":
                for obj in target["bboxes"].keys():
                    generated_pddl += f"\t{obj} - block\n"

                generated_pddl += f"\trobot - robot\n"

            elif domain_name == "hanoi":
                for obj in target["bboxes"].keys():
                    generated_pddl += f"\t{obj}\n"

            elif domain_name == "cooking":
                obj_dict = defaultdict(list)

                for obj in target["bboxes"].keys():
                    if obj.startswith("carrot") or \
                       obj.startswith("cucumber") or \
                       obj.startswith("tomato"):

                        obj_dict["vegetable"] += [obj]

                    elif obj.startswith("counter") or \
                         obj.startswith("cutting_board") or \
                         obj.startswith("bowl"):

                        obj_dict["location"] += [obj]

                    elif obj.startswith("knife"):
                        obj_dict["tool"] += [obj]

                    elif obj.endswith("bot"):
                        obj_dict["robot"] += [obj]

                for _type in ("vegetable", "location", "tool", "robot"):
                    objs = " ".join(obj_dict[_type])
                    generated_pddl += f"\t{objs} - {_type}\n"

            generated_pddl += ")"
                
        elif gen_type == "initial_state":
            prompt = f"Instruction: given object labels, the bounding boxes of the objects, the captions of the objects, and the objects in PDDL, the goal is to write the initial state of the environment in PDDL. \n"

            for i in range(num_examples):
                obj = examples[i]["objects"]
                ini = examples[i]["initial_state"]
                bboxes = examples[i]["bboxes"]
                
                prompt += f"Q: The objects in PDDL are: \n" + \
                          f"{obj}\n" + \
                          f"The object labels, bounding boxes, and captions are: \n"

                for label in bboxes.keys():
                    x1, y1, x2, y2 = [int(x) for x in bboxes[label]["bbox"]]
                    cap = bboxes[label]["caption"]

                    prompt += f"\tlabel: {label}, bounding box: ({x1}, {y1}, {x2}, {y2}), caption: {cap}\n"

                prompt += f"Write the initial state in PDDL? A: \n" + \
                          f"{ini}\n"

            obj = target["objects"]
            bboxes = target["bboxes"]

            prompt += f"Q: The objects in PDDL are: \n" + \
                      f"{obj}\n" + \
                      f"The object labels, bounding boxes, and captions are: \n"

            for label in bboxes.keys():
                x1, y1, x2, y2 = [int(x) for x in bboxes[label]["bbox"]]
                cap = bboxes[label]["caption"]

                prompt += f"\tlabel: {label}, bounding box: ({x1}, {y1}, {x2}, {y2}), caption: {cap}\n"

            prompt += f"Write the initial state in PDDL? A: \n"

        elif gen_type == "goal_specification":
            prompt = f"Instruction: given an instruction, the objects in PDDL, and the initial state in PDDL, the goal is to write the goal specification in PDDL. \n"
            
            for i in range(num_examples):
                inst = examples[i]["instruction"]
                obj = examples[i]["objects"]
                ini = examples[i]["initial_state"]
                gol = examples[i]["goal_specification"]
                
                prompt += f"Q: the instruction is: {inst} \n" + \
                          f"The objects in PDDL are: \n" + \
                          f"{obj} \n" + \
                          f"The initial state in PDDL is: \n" + \
                          f"{ini} \n" 

                prompt += f"Write the goal specification in PDDL? A: \n" + \
                          f"{gol}\n"

            inst = target["instruction"]
            obj = target["objects"]
            ini = target["initial_state"]

            prompt += f"Q: the instruction is: {inst} \n" + \
                      f"The objects in PDDL are: \n" + \
                      f"{obj} \n" + \
                      f"The initial state in PDDL is: \n" + \
                      f"{ini} \n" 

            prompt += f"Write the goal specification in PDDL? A: \n"

        if gen_type in ("initial_state", "goal_specification"):
            response = openai.ChatCompletion.create(
                model="gpt-4",
                temperature=0.0,
                top_p=1,
                frequency_penalty=0,
                presence_penalty=0,
                messages=[
                    {"role": "system", "content": "You are a helpful assistant."},
                    {"role": "user", "content": prompt},
                ],
            )

            generated_pddl = response['choices'][0]['message']['content']

        return generated_pddl

    # corrective reprompting
    def refine_problem(
        self,
        target: str,
        error: Tuple[str, str],
        examples: List[dict],
    ):
        num_examples = len(examples)

        prompt = f"Instruction: given object labels,the bounding boxes of the objects, and the captions of the objects, and an instruction, the goal is to write the problem in PDDL. \n" + \
                 f"The followings are {num_examples} input/output examples. \n"

        for i, example in enumerate(examples):
            prompt += f"Example {i+1}: \n"

            prompt += f"The followings are the object labels, the bounding boxes of the objects, and the captions of the objects: \n"
            for label in example["bboxes"].keys():
                x1, y1, x2, y2 = [int(x) for x in example["bboxes"][label]["bbox"]]
                cap = example["bboxes"][label]["caption"]

                prompt += f"\tlabel: {label}, bounding box: ({x1}, {y1}, {x2}, {y2}), caption: {cap}\n"

            inst = example["instruction"]
            prompt += f"The instruction: {inst}\n"

            prob = example["problem"]
            prompt += f"The PDDL problem based on these inputs is: \n" + \
                      f"{prob}\n"

        prompt += f"Now you have new objects, the bounding boxes of the objects, the captions of the objects, an instruction. "
        prompt += f"The followings are the object labels, the bounding boxes of the objects, and the captions of the objects: \n"

        for label in target["bboxes"].keys():
            x1, y1, x2, y2 = [int(x) for x in target["bboxes"][label]["bbox"]]
            cap = target["bboxes"][label]["caption"]

            prompt += f"\tlabel: {label}, bounding box: (x1, y1) = ({x1}, {y1}), (x2, y2) = ({x2}, {y2}), caption: {cap}\n"

        inst = target["instruction"]
        prompt += f"The instruction: {inst}\n"

        prob = target["problem"]
        prompt += f"You generated the following PDDL problem based on these inputs: \n" + \
                  f"{prob} \n"

        if error is not None: 
            prompt += f"However, our symbolic planner returns the following error for this PDDL problem. \n" + \
                      f"{error[0]}: {error[1]} \n"

        if self.args.use_cot:
            if error is not None:
                prompt += f"What part of the PDDL problem do you think is causing this error? "
            else:
                prompt += f"What part of the PDDL problem do you think is the problem ?" 

            response = None
            server_flag = 0
            server_cnt = 0

            while server_cnt < 10:
                try:
                    response = openai.ChatCompletion.create(
                        model="gpt-4",
                        temperature=0.0,
                        top_p=1,
                        frequency_penalty=0,
                        presence_penalty=0,
                        messages=[
                            {"role": "system", "content": "You are a helpful assistant."},
                            {"role": "user", "content": prompt},
                        ],
                    )

                    server_flag = 1
                except Exception as e:
                    server_cnt += 1
                    print(e)

                if server_flag == 1:
                    break

            generated_text = response['choices'][0]['message']['content']

            prompt += f"{generated_text}\n"

        if error is not None:
            prompt += f"Rewrite this PDDL problem to fix this error without further explanations? \n"
        else:
            prompt += f"Generated the refined PDDL problem without further explanations? \n"

        response = None
        server_flag = 0
        server_cnt = 0

        while server_cnt < 10:
            try:
                response = openai.ChatCompletion.create(
                    model="gpt-4",
                    temperature=0.0,
                    top_p=1,
                    frequency_penalty=0,
                    presence_penalty=0,
                    messages=[
                        {"role": "system", "content": "You are a helpful assistant."},
                        {"role": "user", "content": prompt},
                    ],
                )
                server_flag = 1
            except Exception as e:
                server_cnt += 1
                print(e)

            if server_flag == 1:
                break

        refined_pddl = response['choices'][0]['message']['content']
        refined_pddl = re.findall(r"\(define(?s).*.*\)", refined_pddl)[0] # postprocess

        return refined_pddl

    # find plan using fast-downward
    def find_plan(
        self,
        domain_path: str,
        problem_path: str,
        plan_path: str,
    ):
        def get_cost(line: str):
            # ; cost = COST *
            if line.startswith("; cost = "):
                cost = float(line.split()[3])
            else:
                cost = 1e5

            return cost

        sas_path = f"{plan_path}.sas"

        command = f"python {self.args.downward_dir}/fast-downward.py " + \
                  f"--alias lama " + \
                  f"--search-time-limit {self.args.time_limit} " + \
                  f"--plan-file {plan_path} " + \
                  f"--sas-file {sas_path} " + \
                  f"{domain_path} " + \
                  f"{problem_path}"

        try:
            output = subprocess.check_output(
                command,
                shell=True,
                stderr=subprocess.DEVNULL,
            )

            best_cost = 1e10
            best_plan = None

            for fname in glob.glob(f"{plan_path}.*"):
                with open(fname, "r") as fr:
                    plans = fr.readlines()
                    cost = get_cost(plans[-1]) # the cost is written in the last line

                if cost < best_cost:
                    best_cost = cost
                    best_plan = "\n".join([p.strip() for p in plans[:-1]])

            return True, None

        except Exception as e:
            return False, e.output.decode()


