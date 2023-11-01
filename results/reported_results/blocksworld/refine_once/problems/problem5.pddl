(define (problem blocksworld)
(:domain blocksworld)
(:objects
    green_block - block
    yellow_block - block
    pink_block - block
    red_block - block
    blue_block - block
    robot - robot
)
(:init
    (ontable green_block)
    (ontable yellow_block)
    (ontable pink_block)
    (ontable red_block)
    (clear green_block)
    (clear yellow_block)
    (clear pink_block)
    (clear red_block)
    (handempty robot)
)
(:goal (and (on pink_block red_block) (on red_block yellow_block) (on yellow_block green_block)))
)