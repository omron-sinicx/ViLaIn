(define (problem hanoi)
(:domain hanoi)
(:objects
	peg1
	peg2
	peg3
	blue_disk1
	green_disk1
	orange_disk1
	yellow_disk1
	orange_disk2
	purple_disk1
	blue_disk2
	blue_disk3
)
(:init
        (clear peg2)
        (clear peg3)
        (on blue_disk1 peg1)
        (on green_disk1 blue_disk1)
        (on orange_disk1 green_disk1)
        (on yellow_disk1 orange_disk1)
        (on orange_disk2 yellow_disk1)
        (on purple_disk1 orange_disk2)
        (on blue_disk2 purple_disk1)
        (on blue_disk3 blue_disk2)
        (smaller blue_disk1 green_disk1)
        (smaller blue_disk1 orange_disk1)
        (smaller blue_disk1 yellow_disk1)
        (smaller blue_disk1 orange_disk2)
        (smaller blue_disk1 purple_disk1)
        (smaller blue_disk1 blue_disk2)
        (smaller blue_disk1 blue_disk3)
        (smaller green_disk1 orange_disk1)
        (smaller green_disk1 yellow_disk1)
        (smaller green_disk1 orange_disk2)
        (smaller green_disk1 purple_disk1)
        (smaller green_disk1 blue_disk2)
        (smaller green_disk1 blue_disk3)
        (smaller orange_disk1 yellow_disk1)
        (smaller orange_disk1 orange_disk2)
        (smaller orange_disk1 purple_disk1)
        (smaller orange_disk1 blue_disk2)
        (smaller orange_disk1 blue_disk3)
        (smaller yellow_disk1 orange_disk2)
        (smaller yellow_disk1 purple_disk1)
        (smaller yellow_disk1 blue_disk2)
        (smaller yellow_disk1 blue_disk3)
        (smaller orange_disk2 purple_disk1)
        (smaller orange_disk2 blue_disk2)
        (smaller orange_disk2 blue_disk3)
        (smaller purple_disk1 blue_disk2)
        (smaller purple_disk1 blue_disk3)
        (smaller blue_disk2 blue_disk3)
        (smaller peg1 blue_disk3)
        (smaller peg2 blue_disk3)
        (smaller peg3 blue_disk3)
    )
(:goal (and (on blue_disk1 peg3) (on green_disk1 blue_disk1) (on orange_disk1 green_disk1) (on yellow_disk1 orange_disk1) (on orange_disk2 yellow_disk1) (on purple_disk1 orange_disk2) (on blue_disk2 purple_disk1) (on blue_disk3 blue_disk2)))
)