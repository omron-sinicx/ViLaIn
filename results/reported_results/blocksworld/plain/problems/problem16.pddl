(define (problem blocksworld)
(:domain blocksworld)
(:objects
    blue_block - block
    purple_block - block
    pink_block - block
    red_block - block
    robot - robot
)
(:init
    (ontable green_block)
    (ontable red_block)
    (clear red_block)
    (clear blue_block)
    (on blue_block purple_block)
    (on purple_block pink_block)
    (handempty robot)
)
(:goal (and (on red_block blue_block) (on blue_block purple_block) (on purple_block pink_block)))
)