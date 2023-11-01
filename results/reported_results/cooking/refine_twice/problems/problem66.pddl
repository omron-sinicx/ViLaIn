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
    (available tomato)
    (available carrot)
    (is-whole cucumber)
    (is-whole tomato)
    (is-whole carrot)
    (is-workspace cutting_board)
    (free a_bot)
    (carry b_bot knife)
    (can-cut knife)
    (at cucumber counter)
    (at tomato counter)
    (at carrot counter)
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