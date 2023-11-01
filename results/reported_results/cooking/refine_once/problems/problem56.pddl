(define (problem cooking)
(:domain cooking)
(:objects
	carrot cucumber - vegetable
	counter counter2 bowl cutting_board - location
	knife - tool
	a_bot b_bot - robot
)
(:init
    (available cucumber)
    (is-whole cucumber)
    (available carrot)
    (is-whole carrot)
    (is-workspace cutting_board)
    (free a_bot)
    (carry b_bot knife)
    (can-cut knife)
    (at cucumber counter)
    (at carrot counter)
)
(:goal
    (and
        (at cucumber bowl)
        (at carrot bowl)
        (is-sliced cucumber)
        (is-sliced carrot)
    )
)
)