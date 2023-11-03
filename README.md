# ViLaIn
An official implementation of Vision-Language Interpreter (ViLaIn). See [our paper](http://arxiv.org/abs/2311.00967) for more details.

## Requirements
- This implementation requires `Python>=3.10` and `torch>=2.0.0`. To install PyTorch, please follow the instruction in https://pytorch.org/.

- Install [fast-downward](https://github.com/aibasel/downward) and [VAL](https://github.com/KCL-Planning/VAL) following [the build instructions](https://github.com/aibasel/downward/blob/main/BUILD.md). After the installation, copy the `validate` binary under the `downward` directory.

- Install [Grounding DINO](https://github.com/IDEA-Research/GroundingDINO) following [the instructions](https://github.com/IDEA-Research/GroundingDINO#hammer_and_wrench-install).

## The ProDG dataset
`data` contains PDDL files, observations, and instructions for three domains, which we denoted the ProDG dataset in the paper. This directory also contains annotated bounding boxes in `annotated_bboxes`. The directory structure is as follows:
```
data
 └─domains
    └─domain.pddl                   (A PDDL domain file)
    └─problems                      (PDDL problem files)
       └─problem*.pddl
    └─observations                  (Observations for the initial state)
       └─problem*.jpg
    └─instructions                  (Linguistic instructions)
       └─problem*.txt
    └─annotated_bboxes              (Annotated bounding boxes)
       └─problem*.json
```

## Results
`results/reported_results` contains the generated PDDL problems and found plans reported in the paper. In the directory, there are also three subdirectories for each domain:
- `plain`: the results without corrective reprompting
- `refine_once`: the results by applying corrective reprompting for the problems in `plain`
- `refine_twice`: the results by applying corrective reprompting for the problems in `refine_once`

## Getting Started
### Detecting Objects and Generating Captions
To detect objects with bounding boxes and generate captions, run:
```
export domain=cooking
export grounding_dino_dir=./GroundingDINO
export result_dir=./results/temp/${domain}

python scripts/main.py \
    --data_dir "./data/${domain}" \
    --result_dir ${result_dir} \
    --grounding_dino_dir ${grounding_dino_dir} \
    --predict_bboxes
```
This step should be done prior to PDDL problem generation.

### Generating PDDL Problems and Finding Plans
To generate PDDL problems based on the predicted bounding boxes and captions and find plans, run:
```
export domain=cooking
export downward_dir=./downward
export result_dir=./results/temp/${domain}
export num_repeat=2
export num_examples=3

python scripts/main.py \
    --downward_dir ${downward_dir} \
    --data_dir "./data/${domain}" \
    --result_dir "${result_dir}" \
    --num_repeat ${num_repeat} \
    --num_examples ${num_examples} \
    --gen_step "plain" \
    --generate_problem \
    --find_plan
```

### Evaluating Generated PDDL Problems and Found Plans
To evaluate the generated PDDL problems and validate the found plans, run:

```
export domain=cooking
export downward_dir=./downward
export result_dir=./results/temp/${domain}
export num_repeat=2

python scripts/evaluate.py \
    --downward_dir ${downward_dir} \
    --data_dir "./data/${domain}" \
    --result_dir "${result_dir}" \
    --num_repeat ${num_repeat} \
    --gen_step "plain"
```

### Refining Generated PDDL Problems
To refine the generated PDDL problems by corrective reprompting, run:
```
export domain=cooking
export downward_dir=./downward
export result_dir=./results/temp/${domain}
export num_repeat=2

python scripts/main.py \
    --downward_dir ${downward_dir} \
    --data_dir "./data/${domain}" \
    --result_dir "${result_dir}" \
    --num_repeat ${num_repeat} \
    --gen_step "refine_once" \
    --prev_gen_step "plain" \
    --refine_problem \
    --use_cot \
    --find_plan
```

## Citation
```
@misc{shirai2023visionlanguage,
      title={Vision-Language Interpreter for Robot Task Planning}, 
      author={Keisuke Shirai and Cristian C. Beltran-Hernandez and Masashi Hamaya and Atsushi Hashimoto and Shohei Tanaka and Kento Kawaharazuka and Kazutoshi Tanaka and Yoshitaka Ushiku and Shinsuke Mori},
      year={2023},
      eprint={2311.00967},
      archivePrefix={arXiv},
      primaryClass={cs.RO}
}
```


