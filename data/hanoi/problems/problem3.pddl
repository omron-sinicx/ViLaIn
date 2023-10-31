(define (problem hanoi3)
    (:domain hanoi)
    (:objects
        peg1
        peg2
        peg3
        orange_disk1
        orange_disk2
    )
        (:init
            (clear orange_disk1)
            (clear peg2)
            (clear peg3)
            (on orange_disk1 orange_disk2)
            (on orange_disk2 peg1)
            (smaller orange_disk2 orange_disk1)
            (smaller peg1 orange_disk1)
            (smaller peg1 orange_disk2)
            (smaller peg2 orange_disk1)
            (smaller peg2 orange_disk2)
            (smaller peg3 orange_disk1)
            (smaller peg3 orange_disk2)
        )
    (:goal (and (on orange_disk2 peg3) (on orange_disk1 orange_disk2)))
)