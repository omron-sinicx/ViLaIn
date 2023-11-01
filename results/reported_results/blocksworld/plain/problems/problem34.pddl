(define (problem blocksworld)
(:domain blocksworld)
(:objects
    blue_block - block
    yellow_block - block
    purple_block - block
    red_block - block
    orange_block - block
    robot - robot
)
(:init
    (ontable green_block)
    (ontable yellow_block)
    (ontable blue_block)
    (clear blue_block)
    (clear yellow_block)
    (on pink_block red_block)
    (clear pink_block)
    (handempty robot)
)
(:goal (and (on orange_block yellow_block) (on yellow_block blue_block) (on blue_block purple_block) (on purple_block red_block)))
)