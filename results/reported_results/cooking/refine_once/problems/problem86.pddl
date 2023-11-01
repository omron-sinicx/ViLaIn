(define (problem cooking)
(:domain cooking)
(:objects
	carrot cucumber cucumber2 - vegetable
	counter bowl cutting_board - location
	knife - tool
	a_bot b_bot - robot
)
(:init
    (available carrot)
    (available cucumber)
    (available cucumber2)
    (is-whole carrot)
    (is-whole cucumber)
    (is-whole cucumber2)
    (is-workspace cutting_board)
    (free a_bot)
    (free b_bot)
    (can-cut knife)
    (at carrot counter)
    (at cucumber counter)
    (at cucumber2 counter)
)
(:goal
    (and
        (at carrot bowl)
        (at cucumber bowl)
        (at cucumber2 bowl)
        (is-sliced carrot)
    )
)
)