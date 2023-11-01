(define (problem cooking)
(:domain cooking)
(:objects
	cucumber tomato carrot - vegetable
	counter bowl cutting_board - location
	knife - tool
	a_bot b_bot - robot
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
    (free b_bot)
    (can-cut knife)
    (at cucumber counter)
    (at carrot counter)
    (at tomato counter)
)
(:goal
    (and
        (at cucumber bowl)
        (at carrot bowl)
        (at tomato bowl)
        (is-sliced cucumber)
        (is-sliced carrot)
        (is-sliced tomato)
    )
)
)