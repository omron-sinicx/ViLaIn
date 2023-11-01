(define (problem cooking)
(:domain cooking)
(:objects
	cucumber cucumber2 tomato tomato2 - vegetable
	counter bowl cutting_board - location
	knife - tool
	a_bot b_bot - robot
)
(:init
    (available cucumber)
    (available cucumber2)
    (available tomato)
    (available tomato2)
    (is-whole cucumber)
    (is-whole cucumber2)
    (is-whole tomato)
    (is-whole tomato2)
    (is-workspace cutting_board)
    (free a_bot)
    (carry b_bot knife)
    (can-cut knife)
    (at cucumber counter)
    (at cucumber2 counter)
    (at tomato counter)
    (at tomato2 counter)
)
(:goal
    (and
        (at cucumber bowl)
        (at cucumber2 bowl)
        (at tomato bowl)
        (at tomato2 bowl)
        (is-sliced cucumber)
        (is-sliced cucumber2)
        (is-sliced tomato)
        (is-sliced tomato2)
    )
)
)