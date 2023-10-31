(define (problem hanoi4)
    (:domain hanoi)
    (:objects
        peg1
        peg2
        peg3
        green_disk1
        orange_disk1
    )
        (:init
            (clear green_disk1)
            (clear orange_disk1)
            (clear peg3)
            (on green_disk1 peg1)
            (on orange_disk1 peg2)
            (smaller orange_disk1 green_disk1)
            (smaller peg1 green_disk1)
            (smaller peg1 orange_disk1)
            (smaller peg2 green_disk1)
            (smaller peg2 orange_disk1)
            (smaller peg3 green_disk1)
            (smaller peg3 orange_disk1)
        )
    (:goal (and (on orange_disk1 peg3) (on green_disk1 orange_disk1)))
)