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
    (clear yellow_block)
    (clear red_block)
    (on purple_block pink_block)
    (on pink_block orange_block)
    (handempty robot)
)
(:goal (and (on pink_block purple_block) (on yellow_block orange_block)))
)