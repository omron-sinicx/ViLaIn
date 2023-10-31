(define (problem cooking1)
    (:domain cooking)
    (:objects
        cucumber - vegetable
        counter cutting_board bowl - location
        a_bot b_bot - robot
        knife - tool
    )
    (:init
        (available cucumber)
        (is-whole cucumber)
        (is-workspace cutting_board)
        (free a_bot)
        (carry b_bot knife)
        (can-cut knife)
        (at cucumber counter)
    )
    (:goal
        (and
            (at cucumber bowl)
            (is-sliced cucumber)
        )
    )
)