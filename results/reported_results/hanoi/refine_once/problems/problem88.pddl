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
        (clear peg2)
        (clear peg3)
        (clear peg4)
        (clear peg5)
        (clear green_disk1)
        (on peg1 blue_disk1)
        (on blue_disk1 green_disk1)
        (on green_disk1 blue_disk2)
        (on blue_disk2 orange_disk1)
        (on orange_disk1 peg1)
        (smaller peg2 peg1)
        (smaller peg2 blue_disk1)
        (smaller peg2 green_disk1)
        (smaller peg2 blue_disk2)
        (smaller peg2 orange_disk1)
        (smaller peg3 peg1)
        (smaller peg3 blue_disk1)
        (smaller peg3 green_disk1)
        (smaller peg3 blue_disk2)
        (smaller peg3 orange_disk1)
        (smaller peg4 peg1)
        (smaller peg4 blue_disk1)
        (smaller peg4 green_disk1)
        (smaller peg4 blue_disk2)
        (smaller peg4 orange_disk1)
        (smaller peg5 peg1)
        (smaller peg5 blue_disk1)
        (smaller peg5 green_disk1)
        (smaller peg5 blue_disk2)
        (smaller peg5 orange_disk1)
        (smaller blue_disk1 peg1)
        (smaller green_disk1 peg1)
        (smaller green_disk1 blue_disk1)
        (smaller blue_disk2 peg1)
        (smaller blue_disk2 blue_disk1)
        (smaller blue_disk2 green_disk1)
        (smaller orange_disk1 peg1)
        (smaller orange_disk1 blue_disk1)
        (smaller orange_disk1 green_disk1)
        (smaller orange_disk1 blue_disk2)
    )
(:goal (and (on blue_disk1 peg5) (on green_disk1 blue_disk1) (on blue_disk2 green_disk1) (on orange_disk1 blue_disk2)))
)