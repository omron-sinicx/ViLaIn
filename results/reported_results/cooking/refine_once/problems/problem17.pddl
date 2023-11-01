(define (problem cooking)
(:domain cooking)
(:objects
	tomato - vegetable
	counter bowl cutting_board - location
	knife - tool
	a_bot b_bot - robot
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