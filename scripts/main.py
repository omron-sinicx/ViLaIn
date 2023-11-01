#!/usr/bin/env python

import os
import json
import random

from vilain import ViLaIn
from utils import seed_everything, parse_args, PDDL, get_error_meaning


def main():
    args = parse_args()
    domain_name = args.data_dir.split("/")[-1]

    seed_everything(args.seed)

    vilain = ViLaIn(args)

    task_names = [
        fname.rsplit(".", 1)[0]
        for fname in os.listdir(f"{args.data_dir}/problems")
    ]

    if args.predict_bboxes:
        # create directories
        for dname in ("predicted_bboxes", "annotated_bboxes"):
            os.makedirs(
                f"{args.result_dir}/{dname}",
                exist_ok=True,
            )

        for task_name in task_names:
            image_path = f"{args.data_dir}/observations/{task_name}.jpg"

            # predict bboxes 
            predicted_bbox_anns = vilain.detect_objects(
                domain_name,
                image_path,
            )

            # generate captions for predicted bboxes
            predicted_bbox_anns = vilain.generate_captions(
                image_path,
                predicted_bbox_anns,
            )

            json.dump(
                predicted_bbox_anns,
                open(f"{args.result_dir}/predicted_bboxes/{task_name}.json", "w"),
            )

            # load annotated bboxes
            gt_bbox_anns = json.load(open(f"{args.data_dir}/annotated_bboxes/{task_name}.json"))

            # generate captions for annotated bboxes
            gt_bbox_anns = vilain.generate_captions(
                image_path,
                gt_bbox_anns,
            )
            
            json.dump(
                gt_bbox_anns,
                open(f"{args.result_dir}/annotated_bboxes/{task_name}.json", "w"),
            )

    # generate PDDL problems
    elif args.generate_problem:
        for dname in ("objects", "initial_states", "goal_specifications", "problems"):
            os.makedirs(
                f"{args.result_dir}/{args.gen_step}/{dname}",
                exist_ok=True,
            )

        all_examples = []
        all_targets = []

        num_tasks = len(os.listdir(f"{args.data_dir}/problems"))
        for task_idx in range(1, num_tasks+1):
            pddl = PDDL(open(f"{args.data_dir}/problems/problem{task_idx}.pddl").read())
            instruction = open(f"{args.data_dir}/instructions/problem{task_idx}.txt").read()

            annotated_bbox_anns = json.load(open(f"{args.result_dir}/annotated_bboxes/problem{task_idx}.json"))

            all_examples += [{
                "problem": pddl.pddl_problem,
                "objects": pddl.pddl_objects,
                "initial_state": pddl.pddl_initial_state,
                "goal_specification": pddl.pddl_goal_specification,
                "bboxes": annotated_bbox_anns,
                "instruction": instruction,
            }]

            predicted_bbox_anns = json.load(open(f"{args.result_dir}/predicted_bboxes/problem{task_idx}.json"))

            all_targets += [{
                "problem": None,
                "objects": None,
                "initial_state": None,
                "goal_specification": None,
                "bboxes": predicted_bbox_anns,
                "instruction": instruction,
            }]

        gen_idx = 1
        for task_name_idx in range(len(task_names)):
            target = all_targets[task_name_idx]

            all_example_indices = list(range(len(task_names)))
            del all_example_indices[task_name_idx]

            for repeat in range(args.num_repeat):
                random.Random(gen_idx).shuffle(all_example_indices)
                example_indices = all_example_indices[:args.num_examples]

                examples = [
                    all_examples[i]
                    for i in example_indices
                ]

                # generate PDDL objects
                objects = vilain.generate_problem(
                    target,
                    examples,
                    gen_type="objects",
                    domain_name=domain_name,
                )

                target["objects"] = objects
                with open(f"{args.result_dir}/{args.gen_step}/objects/problem{gen_idx}.pddl", "w") as fw:
                    fw.write(objects)
                        
                # generate PDDL initial state
                initial_state = vilain.generate_problem(
                    target,
                    examples,
                    gen_type="initial_state",
                    domain_name=domain_name,
                )

                target["initial_state"] = initial_state
                with open(f"{args.result_dir}/{args.gen_step}/initial_states/problem{gen_idx}.pddl", "w") as fw:
                    fw.write(initial_state)

                # generate PDDL goal_specification
                goal_specification = vilain.generate_problem(
                    target,
                    examples,
                    gen_type="goal_specification",
                    domain_name=domain_name,
                )

                target["goal_specification"] = goal_specification
                with open(f"{args.result_dir}/{args.gen_step}/goal_specifications/problem{gen_idx}.pddl", "w") as fw:
                    fw.write(goal_specification)

                # concat all parts and generate problem
                problem = f"(define (problem {domain_name}) \n" + \
                          f"(:domain {domain_name}) \n" + \
                          f"{objects} \n" + \
                          f"{initial_state} \n" + \
                          f"{goal_specification} \n" + \
                          f")"

                with open(f"{args.result_dir}/{args.gen_step}/problems/problem{gen_idx}.pddl", "w") as fw:
                    fw.write(problem)

                gen_idx += 1

    # refine generated problems using corrective reprompting
    elif args.refine_problem:
        os.makedirs(
            f"{args.result_dir}/{args.gen_step}/problems",
            exist_ok=True,
        )

        all_examples = []
        all_targets = []

        num_tasks = len(os.listdir(f"{args.data_dir}/problems"))
        for task_idx in range(1, num_tasks+1):
            pddl = PDDL(open(f"{args.data_dir}/problems/problem{task_idx}.pddl").read())
            instruction = open(f"{args.data_dir}/instructions/problem{task_idx}.txt").read()

            annotated_bbox_anns = json.load(open(f"{args.result_dir}/annotated_bboxes/problem{task_idx}.json"))

            all_examples += [{
                "problem": pddl.pddl_problem,
                "bboxes": annotated_bbox_anns,
                "instruction": instruction,
            }]

        num_problems = len(os.listdir(f"{args.result_dir}/{args.prev_gen_step}/problems"))
        for gen_idx in range(1, num_problems+1):
            task_idx = (gen_idx - 1) // args.num_repeat + 1

            pddl = PDDL(open(f"{args.result_dir}/{args.prev_gen_step}/problems/problem{gen_idx}.pddl").read())

            target = {
                "problem": pddl.pddl_problem,
                "bboxes": json.load(open(f"{args.result_dir}/predicted_bboxes/problem{task_idx}.json")),
                "instruction": open(f"{args.data_dir}/instructions/problem{task_idx}.txt").read(),
            }

            all_example_indices = list(range(num_tasks))
            del all_example_indices[task_idx-1] # remove the current task from examples

            random.Random(gen_idx).shuffle(all_example_indices)
            example_indices = all_example_indices[:args.num_examples]

            examples = [
                all_examples[i]
                for i in example_indices
            ]

            error_path = f"{args.result_dir}/{args.prev_gen_step}/errors/problem{gen_idx}.txt"

            if os.path.exists(error_path) or args.refine_all:
                if os.path.exists(error_path):
                    error_name, error_meaning = get_error_meaning(error_path)
                    error = (error_name, error_meaning)
                else:
                    error = None

                refined_problem = vilain.refine_problem(
                    target,
                    error,
                    examples,
                )
            else:
                refined_problem = target["problem"]

            with open(f"{args.result_dir}/{args.gen_step}/problems/problem{gen_idx}.pddl", "w") as fw:
                fw.write(refined_problem)

    # find plan using fast-downward
    if args.find_plan:
        for dname in ("plans", "errors"):
            os.makedirs(
                f"{args.result_dir}/{args.gen_step}/{dname}",
                exist_ok=True,
            )

        domain_path = f"{args.data_dir}/domain.pddl"
        num_problems = len(os.listdir(f"{args.result_dir}/{args.gen_step}/problems"))

        for gen_idx in range(1, num_problems+1):
            found, err = vilain.find_plan(
                domain_path,
                f"{args.result_dir}/{args.gen_step}/problems/problem{gen_idx}.pddl",
                f"{args.result_dir}/{args.gen_step}/plans/problem{gen_idx}",
            )

            if not found:
                with open(f"{args.result_dir}/{args.gen_step}/errors/problem{gen_idx}.txt", "w") as fw:
                    fw.write(err)


if __name__ == "__main__":
    main()


