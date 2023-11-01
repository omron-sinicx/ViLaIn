(define (problem cooking)
(:domain cooking)
(:objects
	cucumber tomato - vegetable
	counter counter2 bowl cutting_board - location
	knife - tool
	a_bot b_bot - robot
)
(:init
    (available cucumber)
    (available tomato)
    (is-whole cucumber)
    (is-whole tomato)
    (is-workspace cutting_board)
    (free a_bot)
    (carry b_bot knife)
    (can-cut knife)
    (at cucumber counter)
    (at tomato counter)
)
(:goal
    (and
        (at cucumber bowl)
        (at tomato bowl)
        (is-sliced cucumber)
        (is-sliced tomato)
    )
)
)