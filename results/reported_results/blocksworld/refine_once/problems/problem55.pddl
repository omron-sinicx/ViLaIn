(define (problem blocksworld)
(:domain blocksworld)
(:objects
    yellow_block - block
    purple_block - block
    pink_block - block
    red_block - block
    orange_block - block
    robot - robot
)
(:init
    (ontable yellow_block)
    (ontable red_block)
    (clear purple_block)
    (clear orange_block)
    (on purple_block pink_block)
    (on pink_block yellow_block)
    (on orange_block red_block)
    (handempty robot)
)
(:goal (and (on pink_block purple_block) (on yellow_block orange_block)))
)