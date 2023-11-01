(define (problem hanoi)
(:domain hanoi)
(:objects
	peg1
	peg2
	peg3
	blue_disk1
	pink_disk1
	orange_disk1
	purple_disk1
	blue_disk2
	pink_disk2
	orange_disk2
)
(:init
        (clear blue_disk1)
        (clear peg2)
        (clear peg3)
        (on blue_disk1 peg1)
        (on pink_disk1 blue_disk1)
        (on orange_disk1 pink_disk1)
        (on purple_disk1 orange_disk1)
        (on blue_disk2 purple_disk1)
        (on pink_disk2 blue_disk2)
        (on orange_disk2 pink_disk2)
        (smaller blue_disk1 peg1)
        (smaller pink_disk1 blue_disk1)
        (smaller orange_disk1 pink_disk1)
        (smaller purple_disk1 orange_disk1)
        (smaller blue_disk2 purple_disk1)
        (smaller pink_disk2 blue_disk2)
        (smaller orange_disk2 pink_disk2)
        (smaller peg2 blue_disk1)
        (smaller peg2 pink_disk1)
        (smaller peg2 orange_disk1)
        (smaller peg2 purple_disk1)
        (smaller peg2 blue_disk2)
        (smaller peg2 pink_disk2)
        (smaller peg2 orange_disk2)
        (smaller peg3 blue_disk1)
        (smaller peg3 pink_disk1)
        (smaller peg3 orange_disk1)
        (smaller peg3 purple_disk1)
        (smaller peg3 blue_disk2)
        (smaller peg3 pink_disk2)
        (smaller peg3 orange_disk2)
    )
(:goal (and (on blue_disk1 peg3) (on pink_disk1 blue_disk1) (on orange_disk1 pink_disk1) (on purple_disk1 orange_disk1) (on blue_disk2 purple_disk1) (on pink_disk2 blue_disk2) (on orange_disk2 pink_disk2)))
)