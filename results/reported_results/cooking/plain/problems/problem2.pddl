(define (problem cooking)
(:domain cooking)
(:objects
	cucumber - vegetable
	counter bowl cutting_board - location
	knife - tool
	a_bot b_bot - robot
)
(:init
    (available cucumber)
    (is-whole cucumber)
    (is-workspace cutting_board)
    (free a_bot)
    (free b_bot)
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