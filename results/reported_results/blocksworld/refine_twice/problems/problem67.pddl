(define (problem blocksworld)
(:domain blocksworld)
(:objects
    green_block - block
    yellow_block - block
    pink_block - block
    red_block - block
    orange_block - block
    purple_block - block
    blue_block - block
    robot - robot
)
(:init
    (ontable green_block)
    (ontable yellow_block)
    (ontable pink_block)
    (ontable red_block)
    (ontable orange_block)
    (ontable purple_block)
    (ontable blue_block)
    (clear green_block)
    (clear yellow_block)
    (clear pink_block)
    (clear red_block)
    (clear orange_block)
    (clear purple_block)
    (clear blue_block)
    (handempty robot)
)
(:goal (and (on yellow_block pink_block) (on pink_block green_block) (on green_block red_block) (on red_block purple_block) (on purple_block blue_block)))
)