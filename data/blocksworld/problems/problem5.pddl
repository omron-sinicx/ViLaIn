(define (problem blocksworld5)
    (:domain blocksworld)
    (:objects
        green_block - block
        orange_block - block
        blue_block - block
        red_block - block
        yellow_block - block
        robot - robot
    )
    (:init
        (ontable yellow_block)
        (clear green_block)
        (on green_block orange_block)
        (on orange_block blue_block)
        (on blue_block red_block)
        (on red_block yellow_block)
        (handempty robot)
    )
    (:goal (and (on yellow_block red_block) (on red_block blue_block) (on blue_block orange_block) (on orange_block green_block)))
)