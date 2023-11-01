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
    (is-whole carrot)
    (at carrot counter)
    (available cucumber)
    (is-whole cucumber)
    (at cucumber counter)
    (available cucumber2)
    (is-whole cucumber2)
    (at cucumber2 counter)
    (is-workspace cutting_board)
    (free a_bot)
    (carry b_bot knife)
    (can-cut knife)
)
(:goal
    (and
        (at carrot bowl)
        (is-sliced carrot)
        (at cucumber bowl)
        (at cucumber2 bowl)
    )
)
)