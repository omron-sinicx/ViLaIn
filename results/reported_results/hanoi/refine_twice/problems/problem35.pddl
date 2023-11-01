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
        (clear peg2)
        (clear peg3)
        (clear orange_disk2)
        (on green_disk1 peg1)
        (on orange_disk1 peg2)
        (on orange_disk2 peg3)
        (smaller green_disk1 orange_disk1)
        (smaller green_disk1 orange_disk2)
    )
(:goal (and (on orange_disk2 peg3) (on orange_disk1 orange_disk2) (on green_disk1 orange_disk1)))
)