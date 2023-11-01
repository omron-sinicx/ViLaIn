(define (problem blocksworld)
(:domain blocksworld)
(:objects
    green_block - block
    yellow_block - block
    pink_block - block
    red_block - block
    purple_block - block
    robot - robot
)
(:init
    (ontable green_block)
    (ontable yellow_block)
    (ontable pink_block)
    (ontable purple_block)
    (clear red_block)
    (clear green_block)
    (clear yellow_block)
    (clear pink_block)
    (handempty robot)
)
(:goal (and (on yellow_block green_block) (on green_block pink_block) (on red_block purple_block)))
)