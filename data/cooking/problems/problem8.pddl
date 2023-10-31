(define (problem cooking8)
    (:domain cooking)
    (:objects
        cucumber tomato - vegetable
        counter cutting_board bowl - location
        a_bot b_bot - robot
        knife - tool
    )
    (:init
        (available cucumber)
        (available tomato)
        (is-sliced tomato)
        (is-whole cucumber)
        (is-workspace cutting_board)
        (free a_bot)
        (carry b_bot knife)
        (can-cut knife)
        (at cucumber counter)
        (at tomato cutting_board)
    )
    (:goal
        (and
            (at cucumber bowl)
            (at tomato bowl)
            (is-sliced cucumber)
            (is-sliced tomato)
        )
    )
)