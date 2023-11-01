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
    (ontable purple_block)
    (ontable pink_block)
    (ontable red_block)
    (ontable orange_block)
    (clear yellow_block)
    (clear purple_block)
    (clear pink_block)
    (clear red_block)
    (clear orange_block)
    (handempty robot)
)
(:goal (and (on pink_block purple_block) (on yellow_block orange_block)))
)