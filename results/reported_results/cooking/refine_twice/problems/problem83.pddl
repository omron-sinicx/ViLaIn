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
    (available cucumber)
    (is-whole cucumber)
    (available cucumber2)
    (is-whole cucumber2)
    (is-workspace cutting_board)
    (free a_bot)
    (carry b_bot knife)
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
        (is-sliced cucumber)
        (is-sliced cucumber2)
    )
)
)