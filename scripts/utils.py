#!/usr/bin/env python

from typing import List
import os
import re
import glob
import random
import argparse
import subprocess
from collections import defaultdict

import numpy as np
import torch
from torchvision.ops import box_convert


def seed_everything(seed: int=42):
    random.seed(seed)
    os.environ['PYTHONHASHSEED'] = str(seed)
    np.random.seed(seed)
    torch.manual_seed(seed)
    torch.cuda.manual_seed(seed)
    torch.backends.cudnn.deterministic = True
    torch.backends.cudnn.benchmark = True


def parse_args():
    parser = argparse.ArgumentParser()

    # for main.py and evaluate.py
    parser.add_argument("--data_dir", type=str, default=None, help="directory for data")
    parser.add_argument("--result_dir", type=str, default=None, help="direcotry for predicted bboxes, generated problems, and found plans")
    parser.add_argument("--domain_name", type=str, default=None, help="domain name (cooking/blocksworld/hanoi)")

    # for main.py 
    parser.add_argument("--predict_bboxes", action="store_true", help="detect objects with bboxes and generate captions")
    parser.add_argument("--generate_problem", action="store_true", help="generate PDDL problems")
    parser.add_argument("--refine_problem", action="store_true", help="refine generated problems by corrective reprompting")
    parser.add_argument("--find_plan", action="store_true", help="refine generated problems by corrective reprompting")

    # grounding dino
    parser.add_argument("--grounding_dino_dir", type=str, default=None, help="directory for grounding dino")
    parser.add_argument("--box_threshold", type=float, default=0.35, help="")
    parser.add_argument("--text_threshold", type=float, default=0.25, help="")

    # downward
    parser.add_argument("--downward_dir", type=str, default=None, help="")
    parser.add_argument("--time_limit", type=int, default=200, help="")

    # related to problem generation and refinement
    parser.add_argument("--seed", type=int, default=42, help="random seed")
    parser.add_argument("--gen_step", type=str, default="base", help="PDDL generation step")
    parser.add_argument("--prev_gen_step", type=str, default="base", help="Previous generation step, used for corrective reprompting")
    parser.add_argument("--num_examples", type=int, default=1, help="the numebr of examples for few-shot prompting")
    parser.add_argument("--num_repeat", type=int, default=1, help="the number of problems to generate per task")
    parser.add_argument("--use_cot", action="store_true", help="refine problem with chain-of-thought (cot)")
    parser.add_argument("--refine_all", action="store_true", help="refine all problems regardless of errors")
    args = parser.parse_args()

    return args


def get_text_query(domain_name: str):
    def get_token_spans(
        query: str,
        phrases: List[str],
    ):
        token_spans = []

        for phrase in phrases:
            span_list = []

            start = query.find(f"{phrase} .")
            for word in phrase.split(" "):
                span_list += [[start, start + len(word)]]
                start += len(word) + 1

            token_spans += [span_list]

        return token_spans

    if domain_name == "blocksworld":
        text_phrases = [
            "red block", 
            "blue block", 
            "green block", 
            "yellow block", 
            "purple block", 
            "orange block", 
            "pink block", 
        ]

        phrase2object = None
    elif domain_name == "hanoi":
        text_phrases = [
            "blue disk", 
            "green disk", 
            "yellow disk", 
            "purple disk", 
            "orange disk", 
            "pink disk", 
            "wooden stick",
        ]
        
        phrase2object = {
            "wooden_stick": "peg",
        }
    elif domain_name == "cooking":
        text_phrases = [
            "carrot",
            "cucumber",
            "tomato",
            "round cutting board",
            "white bowl",
            "black countertop",
            "kitchen knife",
            "black robotic gripper",
        ]

        phrase2object = {
            "round_cutting_board": "cutting_board",
            "white_bowl": "bowl",
            "black_countertop": "counter",
            "kitchen_knife": "knife",
            "black_robotic_gripper": "bot",
        }

    text_query = "".join([
        phrase + " ." 
        for phrase in text_phrases
    ])

    token_spans = get_token_spans(text_query, text_phrases)

    return text_query, phrase2object, token_spans


def create_bbox_annotations(
    domain_name: str,
    boxes: List[np.array], 
    objects: List[str],
    phrases: List[str],
):
    ## cxcywh --> xyxy
    boxes_cxcywh = box_convert(
        boxes=boxes,
        in_fmt="xyxy",
        out_fmt="cxcywh",
    ).numpy()
    whs = boxes_cxcywh[:, 2:]

    bbox_anns = {}

    if domain_name == "blocksworld":
        for obj, box, phrase in zip(objects, boxes, phrases):
            bbox_anns[obj] = {
                "bbox": box.tolist(),
                "phrase": phrase,
            }

    elif domain_name == "hanoi":
        chunks = [
            [obj, box, box[2] - box[0], phrase]
            for obj, box, phrase in zip(objects, boxes, phrases)
        ]

        ## pegs
        object_counts = defaultdict(int)
        chunks = sorted(chunks, key=lambda x: x[1][0])

        # for pegs
        for obj, box, width, phrase in chunks:
            if obj != "peg":
                continue

            object_counts[obj] += 1
            bbox_anns[f"{obj}{object_counts[obj]}"] = {
                "bbox": box.tolist(),
                "phrase": phrase,
            }

        # for disks
        object_counts = defaultdict(int)
        chunks = sorted(chunks, key=lambda x: x[2])

        for obj, box, width, phrase in chunks:
            if obj == "peg":
                continue

            object_counts[obj] += 1
            bbox_anns[f"{obj}{object_counts[obj]}"] = {
                "bbox": box.tolist(),
                "phrase": phrase,
            }

    elif "cooking" in domain_name:
        object_counts = defaultdict(int)

        chunks = [
            [obj, box, phrase]
            for obj, box, phrase in zip(objects, boxes, phrases)
        ]
        chunks = sorted(chunks, key=lambda x: x[1][0])

        for obj, box, phrase in chunks:
            object_counts[obj] += 1

            if obj == "bot":
                if object_counts[obj] <= 2:
                    bot_id ="ab"[object_counts[obj]-1]
                    bbox_anns[f"{bot_id}_{obj}"] = {
                        "bbox": box.tolist(),
                        "phrase": phrase,
                    }
            else:
                if object_counts[obj] > 1:
                    bbox_anns[f"{obj}{object_counts[obj]}"] = {
                        "bbox": box.tolist(),
                        "phrase": phrase,
                    }
                else:
                    bbox_anns[f"{obj}"] = {
                        "bbox": box.tolist(),
                        "phrase": phrase,
                    }

    return bbox_anns


def get_downward_exit_codes():
    return {
        0: [
            "SUCCESS",
            "All run components successfully terminated (translator: completed, search: found a plan, validate: validated a plan)",
        ],
        1: [
            "SEARCH_PLAN_FOUND_AND_OUT_OF_MEMORY",
            "Only returned by portfolios: at least one plan was found and another component ran out of memory.",
        ],
        2: [
            "SEARCH_PLAN_FOUND_AND_OUT_OF_TIME",
            "Only returned by portfolios: at least one plan was found and another component ran out of time.",
        ],
        3: [
            "SEARCH_PLAN_FOUND_AND_OUT_OF_MEMORY_AND_TIME",
            "Only returned by portfolios: at least one plan was found, another component ran out of memory, and yet another one ran out of time.",
        ],
        10: [
            "TRANSLATE_UNSOLVABLE",
            "Translator proved task to be unsolvable. Currently not used",
        ],
        11: [
            "SEARCH_UNSOLVABLE",
            "Task is provably unsolvable with current bound. Currently only used by hillclimbing search.",
        ],
        12: [
            "SEARCH_UNSOLVED_INCOMPLETE",
            "Search ended without finding a solution.",
        ],
        20: [
            "TRANSLATE_OUT_OF_MEMORY",
            "Memory exhausted.",
        ],
        21: [
            "TRANSLATE_OUT_OF_TIME",
            "Time exhausted. Not supported on Windows because we use SIGXCPU to kill the planner.",
        ],
        22: [
            "SEARCH_OUT_OF_MEMORY",
            "Memory exhausted.",
        ],
        23: [
            "SEARCH_OUT_OF_TIME",
            "Timeout occurred. Not supported on Windows because we use SIGXCPU to kill the planner.",
        ],
        24: [
            "SEARCH_OUT_OF_MEMORY_AND_TIME",
            "Only returned by portfolios: one component ran out of memory and another one out of time.",
        ],
        30: [
            "TRANSLATE_CRITICAL_ERROR",
            "Critical error: something went wrong (e.g. translator bug, but also malformed PDDL input).",
        ],
        31: [
            "TRANSLATE_INPUT_ERROR",
            "Usage error: wrong command line options",
        ],
        32: [
            "SEARCH_CRITICAL_ERROR",
            "Something went wrong that should not have gone wrong (e.g. planner bug).",
        ],
        33: [
            "SEARCH_INPUT_ERROR",
            "Wrong command line options or SAS+ file.",
        ],
        34: [
            "SEARCH_UNSUPPORTED",
            "Requested unsupported feature.",
        ],
        35: [
            "DRIVER_CRITICAL_ERROR",
            "Something went wrong in the driver (e.g. failed setting resource limits, ill-defined portfolio, complete plan generated after an incomplete one).",
        ],
        36: [
            "DRIVER_INPUT_ERROR",
            "Usage error: wrong or missing command line options, including (implicitly) specifying non-existing paths (e.g. for input files or build directory).",
        ],
        37: [
            "DRIVER_UNSUPPORTED",
            "Requested unsupported feature (e.g. limiting memory on macOS).",
        ],
    }


def get_error_meaning(error_path: str):
    found_name = None
    found_code = None

    for line in open(error_path).readlines():
        if "exit code" in line:
            name, code = line.split(":")
            name = name.strip()
            code = int(code.strip())

            if code != 0:
                found_name = name
                found_code = code
                break

    if found_name is None:
        raise Exception()

    exit_codes = get_downward_exit_codes()
    error_name, error_meaning = exit_codes[found_code]

    return error_name, error_meaning


def comp_pddl(
    gt_pddl: str, # ground truth PDDL problem
    gen_pddl: str, # generated PDDL problem
):
    gt_pddl = re.sub(r"\s+", " ", gt_pddl.replace("\n", " "))
    gen_pddl = re.sub(r"\s+", " ", gen_pddl.replace("\n", " "))

    # objects
    try:
        gt_obj_pddl = re.findall(r"\(:objects.*\(:init", gt_pddl)[0].replace("(:init", "")
        gt_objs = parse_objects(gt_obj_pddl)

        gen_obj_pddl = re.findall(r"\(:objects.*\(:init", gen_pddl)[0].replace("(:init", "")
        gen_objs = parse_objects(gen_obj_pddl)

        comp_obj = True
        for gt_o in gt_objs:
            if not gt_o in gen_objs:
                comp_obj = False

    except Exception as e:
        comp_obj = False

    # initial state
    try:
        gt_ini_pddl = re.findall(r"\(:init.*\(:goal", gt_pddl)[0].replace("(:goal", "")
        gt_ini = parse_initial_state(gt_ini_pddl)

        gen_ini_pddl = re.findall(r"\(:init.*\(:goal", gen_pddl)[0].replace("(:goal", "")
        gen_ini = parse_initial_state(gen_ini_pddl)

        comp_ini = True
        for gt_i in gt_ini:
            if not gt_i in gen_ini:
                comp_ini = False

    except Exception as e:
        comp_ini = False

    # goal specification
    try:
        gt_gol_pddl = re.findall(r"\(:goal.*", gt_pddl)[0]
        gt_gol = parse_goal_specification(gt_gol_pddl)

        gen_gol_pddl = re.findall(r"\(:goal.*", gen_pddl)[0]
        gen_gol = parse_goal_specification(gen_gol_pddl)

        comp_gol = True
        for gt_g in gt_gol:
            if not gt_g in gen_gol:
                comp_gol = False

    except Exception as e:
        comp_gol = False

    return comp_obj and comp_ini and comp_gol


def comp_exact_pddl(
    gt_pddl: str, # ground truth PDDL problem
    gen_pddl: str, # generated PDDL problem
):
    gt_pddl = re.sub(r"\s+", " ", gt_pddl.replace("\n", " "))
    gen_pddl = re.sub(r"\s+", " ", gen_pddl.replace("\n", " "))

    # objects
    try:
        gt_obj_pddl = re.findall(r"\(:objects.*\(:init", gt_pddl)[0].replace("(:init", "")
        gt_objs = parse_objects(gt_obj_pddl)

        gen_obj_pddl = re.findall(r"\(:objects.*\(:init", gen_pddl)[0].replace("(:init", "")
        gen_objs = parse_objects(gen_obj_pddl)

        if set(gt_objs) == set(gen_objs):
            comp_obj = True
        else:
            comp_obj = False

    except Exception as e:
        comp_obj = False

    # initial state
    try:
        gt_ini_pddl = re.findall(r"\(:init.*\(:goal", gt_pddl)[0].replace("(:goal", "")
        gt_ini = parse_initial_state(gt_ini_pddl)

        gen_ini_pddl = re.findall(r"\(:init.*\(:goal", gen_pddl)[0].replace("(:goal", "")
        gen_ini = parse_initial_state(gen_ini_pddl)

        if set(gt_ini) == set(gen_ini):
            comp_ini = True
        else:
            comp_ini = False

    except Exception as e:
        comp_ini = False

    # goal specification
    try:
        gt_gol_pddl = re.findall(r"\(:goal.*", gt_pddl)[0]
        gt_gol = parse_goal_specification(gt_gol_pddl)

        gen_gol_pddl = re.findall(r"\(:goal.*", gen_pddl)[0]
        gen_gol = parse_goal_specification(gen_gol_pddl)

        if set(gt_gol) == set(gen_gol):
            comp_gol = True
        else:
            comp_gol = False

    except Exception as e:
        comp_gol = False

    return comp_obj and comp_ini and comp_gol


class PDDL:
    def __init__(
        self, 
        pddl_problem: str,
    ):
        self.pddl_problem = pddl_problem
        self.pddl_problem_flat = re.sub(
            r"\s+", " ", 
            pddl_problem.replace("\n", " "),
        )

        self.parse_objects()
        self.parse_initial_state()
        self.parse_goal_specification()

    # parse (:object * ) w/o newline
    def parse_objects(self):
        try:
            text = re.findall(
                r"\(:objects.*\(:init", 
                self.pddl_problem_flat,
            )[0].replace("(:init", "")

            text = text.replace("(:objects", "")
            text = text.replace(")", "")
            text = text.strip().rstrip()

            type_flag = False
            buff = []
            objects = []

            for x in text.split(" "):
                if type_flag:
                    for b in buff:
                        objects += [f"{b} - {x}"]

                    buff.clear()
                    type_flag = False
                elif x == "-":
                    type_flag = True
                else:
                    buff += [x]

            # in case types are not used
            if len(buff) > 0:
                for b in buff:
                    objects += [f"{b}"]

            pddl_objects = "(:objects\n"
            for o in objects:
                pddl_objects += f"    {o}\n"
            pddl_objects += ")"

            self.pddl_objects = pddl_objects
            self.objects = objects
        except Exception as e:
            #self.pddl_objects = None
            #self.objects = None
            self.pddl_objects = []
            self.objects = []

    # parse (:init * ) w/o newline
    def parse_initial_state(self):
        try:
            text = re.findall(
                r"\(:init.*\(:goal", 
                self.pddl_problem_flat,
            )[0].replace("(:goal", "")

            text = text.replace("(:init", "")
            text = text.replace("(", " ( ")
            text = text.replace(")", " ) ")
            text = re.sub(r"\s+", " ", text)
            text = text.strip().rstrip()

            buff = []
            count = 0

            conditions = []

            for x in text.split(" "):
                if x == "(":
                    count += 1
                elif x == ")":
                    if len(buff) > 0:
                        conditions += ["(" + " ".join(buff) + ")"]
                        buff.clear()

                    count -= 1
                else:
                    buff += [x]

                if count < 0:
                    break

            pddl_initial_state = "(:init\n"
            for i in conditions:
                pddl_initial_state += f"    {i}\n"
            pddl_initial_state += ")"

            self.pddl_initial_state = pddl_initial_state
            self.initial_conditions = conditions
        except Exception as e:
            #self.pddl_initial_state = None
            #self.initial_conditions = None
            self.pddl_initial_state = []
            self.initial_conditions = []

    # parse (:goal * )* w/o newline
    def parse_goal_specification(self):
        try:
            text = re.findall(
                r"\(:goal.*", 
                self.pddl_problem_flat,
            )[0]

            text = text.replace("(:goal", "")
            text = text.replace("(and", "", 1)
            text = text.replace("(", " ( ")
            text = text.replace(")", " ) ")
            text = re.sub(r"\s+", " ", text)
            text = text.strip().rstrip()

            buff = []
            count = 0

            conditions = []

            for x in text.split(" "):
                if x == "(":
                    count += 1
                elif x == ")":
                    if len(buff) > 0:
                        conditions += ["(" + " ".join(buff) + ")"]
                        buff.clear()

                    count -= 1
                else:
                    buff += [x]

                if count < 0:
                    break

            pddl_goal_specification = "(:goal (and \n"
            for g in conditions:
                pddl_goal_specification += f"    {g}\n"
            pddl_goal_specification += "))"

            self.pddl_goal_specification = pddl_goal_specification
            self.goal_conditions = conditions
        except Exception as e:
            #self.pddl_goal_specification = None
            #self.goal_conditions = None
            self.pddl_goal_specification = []
            self.goal_conditions = []


def validate_problem(
    downward_dir: str,
    domain_path: str,
    problem_path: str,
):
    try:
        output = subprocess.check_output(
            f"{downward_dir}/validate {domain_path} {problem_path}",
            stderr=subprocess.DEVNULL,
            shell=True,
        ).decode()
    except Exception as e:
        output = str(e.output)

    return output


def validate_plan(
    downward_dir: str,
    domain_path: str,
    problem_path: str,
    plan_paths: List[str],
):
    plan_valid = False

    for plan_path in plan_paths:
        try:
            output = subprocess.check_output(
                f"{downward_dir}/validate {domain_path} {problem_path} {plan_path}",
                #stderr=subprocess.DEVNULL,
                shell=True,
            ).decode()

            if "Plan valid" in output:
                plan_valid = True

        except Exception as e:
            pass

    return plan_valid


def calculate_rpart(
    gt_strs_list: List[List[str]],
    gen_strs_list: List[List[str]],
):
    num_matched = 0
    for gt_strs, gen_strs in zip(gt_strs_list, gen_strs_list):
        for x in gt_strs:
            if x in gen_strs:
                num_matched += 1

    num_gt_total = sum([
        len(gt_strs)
        for gt_strs in gt_strs_list
    ])

    recall = num_matched / num_gt_total 

    return recall


def calculate_rall(
    gt_pddl_list: List[PDDL],
    gen_pddl_list: List[PDDL],
):
    num_matched = 0
    for gt_pddl, gen_pddl in zip(gt_pddl_list, gen_pddl_list):
        # check all objects
        match_obj = True
        for gt_o in gt_pddl.objects:
            if not gt_o in gen_pddl.objects:
                match_obj = False

        # check all initial conditions
        match_ini = True
        for gt_i in gt_pddl.initial_conditions:
            if not gt_i in gen_pddl.initial_conditions:
                match_ini = False

        # check all goal conditions
        match_gol = True
        for gt_g in gt_pddl.goal_conditions:
            if not gt_g in gen_pddl.goal_conditions:
                match_gol = False
        
        if match_obj and match_ini and match_gol:
            num_matched += 1

    num_total = len(gt_pddl_list)

    return num_matched / num_total
        

