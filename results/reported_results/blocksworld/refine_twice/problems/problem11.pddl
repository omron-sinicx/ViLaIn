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
    (ontable blue_block)
    (ontable red_block)
    (on pink_block blue_block)
    (on purple_block pink_block)
    (clear purple_block)
    (clear red_block)
    (handempty robot)
)
(:goal (and (on red_block blue_block) (on blue_block pink_block)))
)