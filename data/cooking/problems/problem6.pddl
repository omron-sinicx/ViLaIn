(define (problem cooking6)
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
        (is-whole cucumber)
        (is-whole carrot)
        (is-workspace cutting_board)
        (free a_bot)
        (carry b_bot knife)
        (can-cut knife)
        (at cucumber counter)
        (at carrot counter)
    )
    (:goal
        (and
            (at carrot bowl)
            (at cucumber bowl)
            (is-sliced cucumber)
            (is-sliced carrot)
        )
    )
)