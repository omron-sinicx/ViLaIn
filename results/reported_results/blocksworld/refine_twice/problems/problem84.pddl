(define (problem blocksworld)
(:domain blocksworld)
(:objects
    green_block - block
    blue_block - block
    yellow_block - block
    purple_block - block
    orange_block - block
    red_block - block
    robot - robot
)
(:init
    (ontable orange_block)
    (ontable red_block)
    (ontable green_block)
    (ontable blue_block)
    (ontable yellow_block)
    (ontable purple_block)
    (clear orange_block)
    (clear red_block)
    (clear green_block)
    (clear blue_block)
    (clear yellow_block)
    (clear purple_block)
    (handempty robot)
)
(:goal (and (on purple_block blue_block) (on blue_block green_block) (on green_block yellow_block) (on yellow_block red_block) (on red_block orange_block)))
)