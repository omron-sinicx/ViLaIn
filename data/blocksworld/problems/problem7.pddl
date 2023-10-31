(define (problem blocksworld7)
    (:domain blocksworld)
    (:objects
        yellow_block - block
        pink_block - block
        green_block - block
        red_block - block
        purple_block - block
        blue_block - block
        robot - robot
    )
    (:init
        (ontable green_block)
        (ontable purple_block)
        (ontable blue_block)
        (clear yellow_block)
        (clear red_block)
        (clear blue_block)
        (on yellow_block pink_block)
        (on pink_block green_block)
        (on red_block purple_block)
        (handempty robot)
    )
    (:goal (and (on yellow_block pink_block) (on pink_block green_block) (on green_block red_block) (on red_block purple_block) (on purple_block blue_block)))
)