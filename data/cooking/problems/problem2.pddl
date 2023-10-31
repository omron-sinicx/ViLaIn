(define (problem cooking2)
    (:domain cooking)
    (:objects
        tomato - vegetable
        counter cutting_board bowl - location
        a_bot b_bot - robot
        knife - tool
    )
    (:init
        (available tomato)
        (is-whole tomato)
        (is-workspace cutting_board)
        (free a_bot)
        (carry b_bot knife)
        (can-cut knife)
        (at tomato counter)
    )
    (:goal
        (and
            (at tomato bowl)
            (is-sliced tomato)
        )
    )
)