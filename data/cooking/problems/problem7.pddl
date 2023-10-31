(define (problem cooking7)
    (:domain cooking)
    (:objects
        cucumber carrot tomato - vegetable
        counter cutting_board bowl - location
        a_bot b_bot - robot
        knife - tool
    )
    (:init
        (available cucumber)
        (available carrot)
        (available tomato)
        (is-whole cucumber)
        (is-whole carrot)
        (is-whole tomato)
        (is-workspace cutting_board)
        (free a_bot)
        (carry b_bot knife)
        (can-cut knife)
        (at cucumber counter)
        (at carrot counter)
        (at tomato counter)
    )
    (:goal
        (and
            (at carrot bowl)
            (at tomato bowl)
            (at cucumber bowl)
            (is-sliced carrot)
            (is-sliced tomato)
            (is-sliced cucumber)
        )
    )
)