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
    (ontable blue_block)
    (ontable yellow_block)
    (ontable purple_block)
    (ontable red_block)
    (ontable orange_block)
    (clear blue_block)
    (clear yellow_block)
    (clear purple_block)
    (clear red_block)
    (clear orange_block)
    (handempty robot)
)
(:goal (and (on blue_block purple_block) (on purple_block red_block) (on red_block yellow_block) (on yellow_block orange_block)))
)