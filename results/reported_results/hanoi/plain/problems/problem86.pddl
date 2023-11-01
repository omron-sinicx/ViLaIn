(define (problem hanoi)
(:domain hanoi)
(:objects
	peg1
	peg2
	peg3
	peg4
	peg5
	blue_disk1
	green_disk1
	blue_disk2
	orange_disk1
)
(:init
        (clear peg1)
        (clear peg2)
        (clear peg3)
        (on peg1 green_disk2)
        (on peg2 blue_disk1)
        (on peg3 green_disk1)
        (on green_disk2 orange_disk1)
        (on blue_disk1 pink_disk1)
        (smaller green_disk2 peg1)
        (smaller orange_disk1 peg1)
        (smaller orange_disk1 green_disk2)
        (smaller blue_disk1 peg2)
        (smaller pink_disk1 peg2)
        (smaller pink_disk1 blue_disk1)
        (smaller green_disk1 peg3)
    )
(:goal (and (on pink_disk1 peg3) (on orange_disk1 pink_disk1) (on blue_disk1 orange_disk1) (on green_disk2 blue_disk1) (on green_disk1 green_disk2)))
)