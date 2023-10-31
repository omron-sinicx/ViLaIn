(define (problem cooking3)
    (:domain cooking)
    (:objects
        carrot - vegetable
        counter cutting_board bowl - location
        a_bot b_bot - robot
        knife - tool
    )
    (:init
        (available carrot)
        (is-whole carrot)
        (is-workspace cutting_board)
        (free a_bot)
        (carry b_bot knife)
        (can-cut knife)
        (at carrot counter)
    )
    (:goal
        (and
            (at carrot bowl)
            (is-sliced carrot)
        )
    )
)