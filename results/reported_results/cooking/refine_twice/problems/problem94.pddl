(define (problem cooking)
(:domain cooking)
(:objects
	carrot carrot2 tomato - vegetable
	counter counter2 bowl cutting_board - location
	knife - tool
	a_bot b_bot - robot
)
(:init
    (available carrot)
    (available carrot2)
    (available tomato)
    (is-whole carrot)
    (is-whole carrot2)
    (is-whole tomato)
    (is-workspace cutting_board)
    (free a_bot)
    (carry b_bot knife)
    (can-cut knife)
    (at carrot counter)
    (at carrot2 counter)
    (at tomato counter)
)
(:goal
    (and
        (at carrot bowl)
        (at carrot2 bowl)
        (at tomato bowl)
        (is-sliced tomato)
    )
)
)