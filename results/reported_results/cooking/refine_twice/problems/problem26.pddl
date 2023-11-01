(define (problem cooking)
(:domain cooking)
(:objects
	carrot - vegetable
	counter bowl cutting_board - location
	knife - tool
	a_bot b_bot - robot
)
(:init
    (available carrot)
    (is-whole carrot)
    (is-workspace cutting_board)
    (free a_bot)
    (carry b_bot knife)
    (can-cut knife)
    (at carrot counter)
)
(:goal
    (and
        (at carrot bowl)
        (is-sliced carrot)
    )
)
)