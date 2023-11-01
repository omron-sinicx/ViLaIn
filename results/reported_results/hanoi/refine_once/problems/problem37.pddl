(define (problem hanoi)
(:domain hanoi)
(:objects
	peg1
	peg2
	peg3
	green_disk1
	orange_disk1
	orange_disk2
)
(:init
        (clear green_disk1)
        (clear orange_disk1)
        (clear peg3)
        (on green_disk1 peg1)
        (on orange_disk1 peg2)
        (smaller peg1 green_disk1)
        (smaller peg2 green_disk1)
        (smaller peg3 green_disk1)
        (smaller peg1 orange_disk1)
        (smaller peg2 orange_disk1)
        (smaller peg3 orange_disk1)
    )
(:goal (and (on green_disk1 peg3) (on orange_disk1 peg3) (on orange_disk2 peg3)))
)