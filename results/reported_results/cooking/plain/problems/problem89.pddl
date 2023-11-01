(define (problem cooking)
(:domain cooking)
(:objects
	carrot cucumber cucumber2 - vegetable
	counter bowl cutting_board - location
	knife - tool
	a_bot b_bot - robot
)
(:init
    (available cucumber)
    (is-sliced cucumber)
    (is-workspace cutting_board)
    (free a_bot)
    (carry b_bot knife)
    (can-cut knife)
    (at cucumber cutting_board)
)
(:goal
    (and
        (at cucumber bowl)
        (is-sliced cucumber)
        (at carrot bowl)
        (is-sliced carrot)
    )
)
)