(define (problem cooking10)
    (:domain cooking)
    (:objects
        carrot tomato - vegetable
        counter cutting_board bowl - location
        a_bot b_bot - robot
        knife - tool
    )
    (:init
        (available carrot)
        (available tomato)
        (is-whole tomato)
        (is-sliced carrot)
        (is-workspace cutting_board)
        (free a_bot)
        (carry b_bot knife)
        (can-cut knife)
        (at carrot cutting_board)
        (at tomato counter)
    )
    (:goal
        (and
            (at tomato bowl)
            (at carrot bowl)
            (is-sliced tomato)
            (is-sliced carrot)
        )
    )
)