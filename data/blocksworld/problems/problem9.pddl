(define (problem blocksworld9)
    (:domain blocksworld)
    (:objects
        orange_block - block
        purple_block - block
        blue_block - block
        green_block - block
        yellow_block - block
        red_block - block
        robot - robot
    )
    (:init
        (ontable red_block)
        (ontable orange_block)
        (clear purple_block)
        (clear orange_block)
        (on purple_block blue_block)
        (on blue_block green_block)
        (on green_block yellow_block)
        (on yellow_block red_block)
        (handempty robot)
    )
    (:goal (and (on purple_block blue_block) (on blue_block green_block) (on green_block yellow_block) (on yellow_block red_block) (on red_block orange_block)))
)