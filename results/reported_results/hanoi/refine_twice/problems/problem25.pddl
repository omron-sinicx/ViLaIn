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
        (clear peg2)
        (clear peg3)
        (on pink_disk1 peg1)
        (on orange_disk1 pink_disk1)
        (on orange_disk2 orange_disk1)
        (smaller pink_disk1 peg1)
        (smaller pink_disk1 peg2)
        (smaller pink_disk1 peg3)
        (smaller orange_disk1 peg1)
        (smaller orange_disk1 peg2)
        (smaller orange_disk1 peg3)
        (smaller orange_disk2 peg1)
        (smaller orange_disk2 peg2)
        (smaller orange_disk2 peg3)
        (smaller pink_disk1 orange_disk1)
        (smaller orange_disk1 orange_disk2)
    )
(:goal (and (on orange_disk2 peg3) (on orange_disk1 orange_disk2) (on pink_disk1 orange_disk1)))
)