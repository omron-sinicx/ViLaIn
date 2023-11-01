(define (problem cooking)
(:domain cooking)
(:objects
	carrot tomato - vegetable
	counter bowl cutting_board - location
	knife - tool
	a_bot b_bot - robot
)
(:init
    (available carrot)
    (available tomato)
    (is-whole carrot)
    (is-whole tomato)
    (is-workspace cutting_board)
    (free a_bot)
    (carry b_bot knife)
    (can-cut knife)
    (at carrot counter)
    (at tomato counter)
)
(:goal
    (and
        (at carrot bowl)
        (at tomato bowl)
        (is-sliced carrot)
        (is-sliced tomato)
    )
)
)