#!/usr/bin/env python

import os
import glob

from utils import parse_args, PDDL
from utils import validate_problem, validate_plan, calculate_rpart, calculate_rall


def main():
    args = parse_args()

    generated_problem_dir = f"{args.result_dir}/{args.gen_step}/problems"

    domain_path = f"{args.data_dir}/domain.pddl"
    num_problems = len(os.listdir(f"{generated_problem_dir}"))

    # calculate r_syntax
    num_valid_problems = 0
    for gen_idx in range(1, num_problems+1):
        problem_path = f"{generated_problem_dir}/problem{gen_idx}.pddl"

        output = validate_problem(
            args.downward_dir,
            domain_path,
            problem_path,
        )

        if len(output) <= 0:
            num_valid_problems += 1

    r_syntax = num_valid_problems / num_problems

    # calculate r_plan
    num_valid_plans = 0
    for gen_idx in range(1, num_problems+1):
        problem_path = f"{generated_problem_dir}/problem{gen_idx}.pddl"
        problem_name = problem_path.split("/")[-1].split(".")[0]

        plan_paths = []
        for f in glob.glob(f"{args.result_dir}/{args.gen_step}/plans/{problem_name}.*"):
            if not f.endswith("sas"):
                plan_paths += [f]

        plan_valid = validate_plan(
            args.downward_dir,
            domain_path,
            problem_path,
            plan_paths,
        )

        if plan_valid:
            num_valid_plans += 1

    r_plan = num_valid_plans / num_problems

    # load all ground truth and generated problems
    num_gt_problems = len(os.listdir(f"{args.data_dir}/problems"))
    gt_problem_list = []
    gen_problem_list = []

    gen_idx = 1
    for gt_idx in range(1, num_gt_problems+1):
        gt_problem = PDDL(open(f"{args.data_dir}/problems/problem{gt_idx}.pddl").read())

        for _ in range(args.num_repeat):
            gen_problem = PDDL(open(f"{args.result_dir}/{args.gen_step}/problems/problem{gen_idx}.pddl").read())

            gt_problem_list += [gt_problem]
            gen_problem_list += [gen_problem]

            gen_idx += 1

    # calculate r_part
    r_part_obj = calculate_rpart(
        [gt_problem.objects for gt_problem in gt_problem_list],
        [gen_problem.objects for gen_problem in gen_problem_list],
    )

    r_part_ini = calculate_rpart(
        [gt_problem.initial_conditions for gt_problem in gt_problem_list],
        [gen_problem.initial_conditions for gen_problem in gen_problem_list],
    )

    r_part_gol = calculate_rpart(
        [gt_problem.goal_conditions for gt_problem in gt_problem_list],
        [gen_problem.goal_conditions for gen_problem in gen_problem_list],
    )

    # calculate r_all
    r_all = calculate_rall(
        gt_problem_list,
        gen_problem_list,
    )

    print(f"R_syntax   = {r_syntax:.2f}")
    print(f"R_plan     = {r_plan:.2f}")
    print(f"R_part (O) = {r_part_obj:.2f}")
    print(f"R_part (I) = {r_part_ini:.2f}")
    print(f"R_part (G) = {r_part_gol:.2f}")
    print(f"R_all      = {r_all:.2f}")


if __name__ == "__main__":
    main()


