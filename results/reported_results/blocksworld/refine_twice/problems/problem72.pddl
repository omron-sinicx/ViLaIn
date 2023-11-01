(define (problem blocksworld)
(:domain blocksworld)
(:objects
    green_block - block
    yellow_block - block
    orange_block - block
    purple_block - block
    pink_block - block
    red_block - block
    robot - robot
)
(:init
    (ontable green_block)
    (ontable red_block)
    (clear red_block)
    (clear green_block)
    (on yellow_block green_block)
    (on pink_block yellow_block)
    (on purple_block pink_block)
    (on orange_block purple_block)
    (on red_block orange_block)
    (handempty robot)
)
(:goal (and (on green_block yellow_block) (on yellow_block pink_block) (on purple_block orange_block) (on orange_block red_block) (clear green_block) (clear purple_block)))
)