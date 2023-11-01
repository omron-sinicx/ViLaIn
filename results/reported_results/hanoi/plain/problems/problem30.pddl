(define (problem hanoi)
(:domain hanoi)
(:objects
	peg1
	peg2
	peg3
	orange_disk1
	orange_disk2
	pink_disk1
)
(:init
        (clear peg1)
        (clear peg2)
        (clear peg3)
        (on orange_disk1 peg1)
        (on orange_disk2 peg2)
        (on pink_disk1 peg3)
        (smaller peg1 orange_disk1)
        (smaller peg1 orange_disk2)
        (smaller peg1 pink_disk1)
        (smaller peg2 orange_disk1)
        (smaller peg2 orange_disk2)
        (smaller peg2 pink_disk1)
        (smaller peg3 orange_disk1)
        (smaller peg3 orange_disk2)
        (smaller peg3 pink_disk1)
    )
(:goal (and (on pink_disk1 peg3) (on orange_disk1 pink_disk1) (on blue_disk1 orange_disk1) (on green_disk2 blue_disk1) (on green_disk1 green_disk2)))
)