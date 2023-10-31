(define (problem hanoi9)
    (:domain hanoi)
    (:objects
        peg1
        peg2
        peg3
        blue_disk1
        pink_disk1
        green_disk1
        blue_disk2
        pink_disk2
        orange_disk1
    )
        (:init
            (clear blue_disk1)
            (clear peg2)
            (clear peg3)
            (on blue_disk1 pink_disk1)
            (on pink_disk1 green_disk1)
            (on green_disk1 blue_disk2)
            (on blue_disk2 pink_disk2)
            (on pink_disk2 orange_disk1)
            (on orange_disk1 peg1)
            (smaller pink_disk1 blue_disk1)
            (smaller green_disk1 blue_disk1)
            (smaller green_disk1 pink_disk1)
            (smaller blue_disk2 blue_disk1)
            (smaller blue_disk2 pink_disk1)
            (smaller blue_disk2 green_disk1)
            (smaller pink_disk2 blue_disk1)
            (smaller pink_disk2 pink_disk1)
            (smaller pink_disk2 green_disk1)
            (smaller pink_disk2 blue_disk2)
            (smaller orange_disk1 blue_disk1)
            (smaller orange_disk1 pink_disk1)
            (smaller orange_disk1 green_disk1)
            (smaller orange_disk1 blue_disk2)
            (smaller orange_disk1 pink_disk2)
            (smaller peg1 blue_disk1)
            (smaller peg1 pink_disk1)
            (smaller peg1 green_disk1)
            (smaller peg1 blue_disk2)
            (smaller peg1 pink_disk2)
            (smaller peg1 orange_disk1)
            (smaller peg2 blue_disk1)
            (smaller peg2 pink_disk1)
            (smaller peg2 green_disk1)
            (smaller peg2 blue_disk2)
            (smaller peg2 pink_disk2)
            (smaller peg2 orange_disk1)
            (smaller peg3 blue_disk1)
            (smaller peg3 pink_disk1)
            (smaller peg3 green_disk1)
            (smaller peg3 blue_disk2)
            (smaller peg3 pink_disk2)
            (smaller peg3 orange_disk1)
        )
    (:goal (and (on orange_disk1 peg3) (on pink_disk2 orange_disk1) (on blue_disk2 pink_disk2) (on green_disk1 blue_disk2) (on pink_disk1 green_disk1) (on blue_disk1 pink_disk1)))
)