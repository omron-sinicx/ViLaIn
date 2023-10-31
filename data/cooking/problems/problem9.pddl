(define (problem cooking9)
    (:domain cooking)
    (:objects
        cucumber carrot - vegetable
        counter cutting_board bowl - location
        a_bot b_bot - robot
        knife - tool
    )
    (:init
        (available cucumber)
        (available carrot)
        (is-whole carrot)
        (is-sliced cucumber)
        (is-workspace cutting_board)
        (free a_bot)
        (carry b_bot knife)
        (can-cut knife)
        (at cucumber cutting_board)
        (at carrot counter)
    )
    (:goal
        (and
            (at cucumber bowl)
            (at carrot bowl)
            (is-sliced cucumber)
            (is-sliced carrot)
        )
    )
)