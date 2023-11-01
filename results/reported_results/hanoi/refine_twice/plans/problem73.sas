begin_version
3
end_version
begin_metric
0
end_metric
14
begin_variable
var0
-1
2
Atom clear(yellow_disk1)
NegatedAtom clear(yellow_disk1)
end_variable
begin_variable
var1
-1
2
Atom clear(green_disk2)
NegatedAtom clear(green_disk2)
end_variable
begin_variable
var2
-1
2
Atom clear(orange_disk1)
NegatedAtom clear(orange_disk1)
end_variable
begin_variable
var3
-1
2
Atom clear(purple_disk1)
NegatedAtom clear(purple_disk1)
end_variable
begin_variable
var4
-1
2
Atom clear(blue_disk1)
NegatedAtom clear(blue_disk1)
end_variable
begin_variable
var5
-1
2
Atom clear(peg1)
NegatedAtom clear(peg1)
end_variable
begin_variable
var6
-1
2
Atom clear(peg2)
NegatedAtom clear(peg2)
end_variable
begin_variable
var7
-1
2
Atom clear(peg3)
NegatedAtom clear(peg3)
end_variable
begin_variable
var8
-1
3
Atom on(blue_disk1, peg1)
Atom on(blue_disk1, peg2)
Atom on(blue_disk1, peg3)
end_variable
begin_variable
var9
-1
4
Atom on(purple_disk1, blue_disk1)
Atom on(purple_disk1, peg1)
Atom on(purple_disk1, peg2)
Atom on(purple_disk1, peg3)
end_variable
begin_variable
var10
-1
5
Atom on(orange_disk1, blue_disk1)
Atom on(orange_disk1, peg1)
Atom on(orange_disk1, peg2)
Atom on(orange_disk1, peg3)
Atom on(orange_disk1, purple_disk1)
end_variable
begin_variable
var11
-1
7
Atom on(green_disk1, blue_disk1)
Atom on(green_disk1, orange_disk1)
Atom on(green_disk1, peg1)
Atom on(green_disk1, peg2)
Atom on(green_disk1, peg3)
Atom on(green_disk1, purple_disk1)
Atom on(green_disk1, yellow_disk1)
end_variable
begin_variable
var12
-1
6
Atom on(green_disk2, blue_disk1)
Atom on(green_disk2, orange_disk1)
Atom on(green_disk2, peg1)
Atom on(green_disk2, peg2)
Atom on(green_disk2, peg3)
Atom on(green_disk2, purple_disk1)
end_variable
begin_variable
var13
-1
7
Atom on(yellow_disk1, blue_disk1)
Atom on(yellow_disk1, green_disk2)
Atom on(yellow_disk1, orange_disk1)
Atom on(yellow_disk1, peg1)
Atom on(yellow_disk1, peg2)
Atom on(yellow_disk1, peg3)
Atom on(yellow_disk1, purple_disk1)
end_variable
8
begin_mutex_group
6
4 0
11 0
12 0
10 0
9 0
13 0
end_mutex_group
begin_mutex_group
2
1 0
13 1
end_mutex_group
begin_mutex_group
4
2 0
11 1
12 1
13 2
end_mutex_group
begin_mutex_group
7
5 0
8 0
11 2
12 2
10 1
9 1
13 3
end_mutex_group
begin_mutex_group
7
6 0
8 1
11 3
12 3
10 2
9 2
13 4
end_mutex_group
begin_mutex_group
7
7 0
8 2
11 4
12 4
10 3
9 3
13 5
end_mutex_group
begin_mutex_group
5
3 0
11 5
12 5
10 4
13 6
end_mutex_group
begin_mutex_group
2
0 0
11 6
end_mutex_group
begin_state
1
1
1
1
1
1
0
0
0
0
4
6
1
1
end_state
begin_goal
6
8 2
9 0
10 4
11 6
12 1
13 1
end_goal
152
begin_operator
move blue_disk1 peg1 peg2
1
4 0
3
0 5 -1 0
0 6 0 1
0 8 0 1
1
end_operator
begin_operator
move blue_disk1 peg1 peg3
1
4 0
3
0 5 -1 0
0 7 0 1
0 8 0 2
1
end_operator
begin_operator
move blue_disk1 peg2 peg1
1
4 0
3
0 5 0 1
0 6 -1 0
0 8 1 0
1
end_operator
begin_operator
move blue_disk1 peg2 peg3
1
4 0
3
0 6 -1 0
0 7 0 1
0 8 1 2
1
end_operator
begin_operator
move blue_disk1 peg3 peg1
1
4 0
3
0 5 0 1
0 7 -1 0
0 8 2 0
1
end_operator
begin_operator
move blue_disk1 peg3 peg2
1
4 0
3
0 6 0 1
0 7 -1 0
0 8 2 1
1
end_operator
begin_operator
move green_disk1 blue_disk1 orange_disk1
0
3
0 4 -1 0
0 2 0 1
0 11 0 1
1
end_operator
begin_operator
move green_disk1 blue_disk1 peg1
0
3
0 4 -1 0
0 5 0 1
0 11 0 2
1
end_operator
begin_operator
move green_disk1 blue_disk1 peg2
0
3
0 4 -1 0
0 6 0 1
0 11 0 3
1
end_operator
begin_operator
move green_disk1 blue_disk1 peg3
0
3
0 4 -1 0
0 7 0 1
0 11 0 4
1
end_operator
begin_operator
move green_disk1 blue_disk1 purple_disk1
0
3
0 4 -1 0
0 3 0 1
0 11 0 5
1
end_operator
begin_operator
move green_disk1 blue_disk1 yellow_disk1
0
3
0 4 -1 0
0 0 0 1
0 11 0 6
1
end_operator
begin_operator
move green_disk1 orange_disk1 blue_disk1
0
3
0 4 0 1
0 2 -1 0
0 11 1 0
1
end_operator
begin_operator
move green_disk1 orange_disk1 peg1
0
3
0 2 -1 0
0 5 0 1
0 11 1 2
1
end_operator
begin_operator
move green_disk1 orange_disk1 peg2
0
3
0 2 -1 0
0 6 0 1
0 11 1 3
1
end_operator
begin_operator
move green_disk1 orange_disk1 peg3
0
3
0 2 -1 0
0 7 0 1
0 11 1 4
1
end_operator
begin_operator
move green_disk1 orange_disk1 purple_disk1
0
3
0 2 -1 0
0 3 0 1
0 11 1 5
1
end_operator
begin_operator
move green_disk1 orange_disk1 yellow_disk1
0
3
0 2 -1 0
0 0 0 1
0 11 1 6
1
end_operator
begin_operator
move green_disk1 peg1 blue_disk1
0
3
0 4 0 1
0 5 -1 0
0 11 2 0
1
end_operator
begin_operator
move green_disk1 peg1 orange_disk1
0
3
0 2 0 1
0 5 -1 0
0 11 2 1
1
end_operator
begin_operator
move green_disk1 peg1 peg2
0
3
0 5 -1 0
0 6 0 1
0 11 2 3
1
end_operator
begin_operator
move green_disk1 peg1 peg3
0
3
0 5 -1 0
0 7 0 1
0 11 2 4
1
end_operator
begin_operator
move green_disk1 peg1 purple_disk1
0
3
0 5 -1 0
0 3 0 1
0 11 2 5
1
end_operator
begin_operator
move green_disk1 peg1 yellow_disk1
0
3
0 5 -1 0
0 0 0 1
0 11 2 6
1
end_operator
begin_operator
move green_disk1 peg2 blue_disk1
0
3
0 4 0 1
0 6 -1 0
0 11 3 0
1
end_operator
begin_operator
move green_disk1 peg2 orange_disk1
0
3
0 2 0 1
0 6 -1 0
0 11 3 1
1
end_operator
begin_operator
move green_disk1 peg2 peg1
0
3
0 5 0 1
0 6 -1 0
0 11 3 2
1
end_operator
begin_operator
move green_disk1 peg2 peg3
0
3
0 6 -1 0
0 7 0 1
0 11 3 4
1
end_operator
begin_operator
move green_disk1 peg2 purple_disk1
0
3
0 6 -1 0
0 3 0 1
0 11 3 5
1
end_operator
begin_operator
move green_disk1 peg2 yellow_disk1
0
3
0 6 -1 0
0 0 0 1
0 11 3 6
1
end_operator
begin_operator
move green_disk1 peg3 blue_disk1
0
3
0 4 0 1
0 7 -1 0
0 11 4 0
1
end_operator
begin_operator
move green_disk1 peg3 orange_disk1
0
3
0 2 0 1
0 7 -1 0
0 11 4 1
1
end_operator
begin_operator
move green_disk1 peg3 peg1
0
3
0 5 0 1
0 7 -1 0
0 11 4 2
1
end_operator
begin_operator
move green_disk1 peg3 peg2
0
3
0 6 0 1
0 7 -1 0
0 11 4 3
1
end_operator
begin_operator
move green_disk1 peg3 purple_disk1
0
3
0 7 -1 0
0 3 0 1
0 11 4 5
1
end_operator
begin_operator
move green_disk1 peg3 yellow_disk1
0
3
0 7 -1 0
0 0 0 1
0 11 4 6
1
end_operator
begin_operator
move green_disk1 purple_disk1 blue_disk1
0
3
0 4 0 1
0 3 -1 0
0 11 5 0
1
end_operator
begin_operator
move green_disk1 purple_disk1 orange_disk1
0
3
0 2 0 1
0 3 -1 0
0 11 5 1
1
end_operator
begin_operator
move green_disk1 purple_disk1 peg1
0
3
0 5 0 1
0 3 -1 0
0 11 5 2
1
end_operator
begin_operator
move green_disk1 purple_disk1 peg2
0
3
0 6 0 1
0 3 -1 0
0 11 5 3
1
end_operator
begin_operator
move green_disk1 purple_disk1 peg3
0
3
0 7 0 1
0 3 -1 0
0 11 5 4
1
end_operator
begin_operator
move green_disk1 purple_disk1 yellow_disk1
0
3
0 3 -1 0
0 0 0 1
0 11 5 6
1
end_operator
begin_operator
move green_disk1 yellow_disk1 blue_disk1
0
3
0 4 0 1
0 0 -1 0
0 11 6 0
1
end_operator
begin_operator
move green_disk1 yellow_disk1 orange_disk1
0
3
0 2 0 1
0 0 -1 0
0 11 6 1
1
end_operator
begin_operator
move green_disk1 yellow_disk1 peg1
0
3
0 5 0 1
0 0 -1 0
0 11 6 2
1
end_operator
begin_operator
move green_disk1 yellow_disk1 peg2
0
3
0 6 0 1
0 0 -1 0
0 11 6 3
1
end_operator
begin_operator
move green_disk1 yellow_disk1 peg3
0
3
0 7 0 1
0 0 -1 0
0 11 6 4
1
end_operator
begin_operator
move green_disk1 yellow_disk1 purple_disk1
0
3
0 3 0 1
0 0 -1 0
0 11 6 5
1
end_operator
begin_operator
move green_disk2 blue_disk1 orange_disk1
1
1 0
3
0 4 -1 0
0 2 0 1
0 12 0 1
1
end_operator
begin_operator
move green_disk2 blue_disk1 peg1
1
1 0
3
0 4 -1 0
0 5 0 1
0 12 0 2
1
end_operator
begin_operator
move green_disk2 blue_disk1 peg2
1
1 0
3
0 4 -1 0
0 6 0 1
0 12 0 3
1
end_operator
begin_operator
move green_disk2 blue_disk1 peg3
1
1 0
3
0 4 -1 0
0 7 0 1
0 12 0 4
1
end_operator
begin_operator
move green_disk2 blue_disk1 purple_disk1
1
1 0
3
0 4 -1 0
0 3 0 1
0 12 0 5
1
end_operator
begin_operator
move green_disk2 orange_disk1 blue_disk1
1
1 0
3
0 4 0 1
0 2 -1 0
0 12 1 0
1
end_operator
begin_operator
move green_disk2 orange_disk1 peg1
1
1 0
3
0 2 -1 0
0 5 0 1
0 12 1 2
1
end_operator
begin_operator
move green_disk2 orange_disk1 peg2
1
1 0
3
0 2 -1 0
0 6 0 1
0 12 1 3
1
end_operator
begin_operator
move green_disk2 orange_disk1 peg3
1
1 0
3
0 2 -1 0
0 7 0 1
0 12 1 4
1
end_operator
begin_operator
move green_disk2 orange_disk1 purple_disk1
1
1 0
3
0 2 -1 0
0 3 0 1
0 12 1 5
1
end_operator
begin_operator
move green_disk2 peg1 blue_disk1
1
1 0
3
0 4 0 1
0 5 -1 0
0 12 2 0
1
end_operator
begin_operator
move green_disk2 peg1 orange_disk1
1
1 0
3
0 2 0 1
0 5 -1 0
0 12 2 1
1
end_operator
begin_operator
move green_disk2 peg1 peg2
1
1 0
3
0 5 -1 0
0 6 0 1
0 12 2 3
1
end_operator
begin_operator
move green_disk2 peg1 peg3
1
1 0
3
0 5 -1 0
0 7 0 1
0 12 2 4
1
end_operator
begin_operator
move green_disk2 peg1 purple_disk1
1
1 0
3
0 5 -1 0
0 3 0 1
0 12 2 5
1
end_operator
begin_operator
move green_disk2 peg2 blue_disk1
1
1 0
3
0 4 0 1
0 6 -1 0
0 12 3 0
1
end_operator
begin_operator
move green_disk2 peg2 orange_disk1
1
1 0
3
0 2 0 1
0 6 -1 0
0 12 3 1
1
end_operator
begin_operator
move green_disk2 peg2 peg1
1
1 0
3
0 5 0 1
0 6 -1 0
0 12 3 2
1
end_operator
begin_operator
move green_disk2 peg2 peg3
1
1 0
3
0 6 -1 0
0 7 0 1
0 12 3 4
1
end_operator
begin_operator
move green_disk2 peg2 purple_disk1
1
1 0
3
0 6 -1 0
0 3 0 1
0 12 3 5
1
end_operator
begin_operator
move green_disk2 peg3 blue_disk1
1
1 0
3
0 4 0 1
0 7 -1 0
0 12 4 0
1
end_operator
begin_operator
move green_disk2 peg3 orange_disk1
1
1 0
3
0 2 0 1
0 7 -1 0
0 12 4 1
1
end_operator
begin_operator
move green_disk2 peg3 peg1
1
1 0
3
0 5 0 1
0 7 -1 0
0 12 4 2
1
end_operator
begin_operator
move green_disk2 peg3 peg2
1
1 0
3
0 6 0 1
0 7 -1 0
0 12 4 3
1
end_operator
begin_operator
move green_disk2 peg3 purple_disk1
1
1 0
3
0 7 -1 0
0 3 0 1
0 12 4 5
1
end_operator
begin_operator
move green_disk2 purple_disk1 blue_disk1
1
1 0
3
0 4 0 1
0 3 -1 0
0 12 5 0
1
end_operator
begin_operator
move green_disk2 purple_disk1 orange_disk1
1
1 0
3
0 2 0 1
0 3 -1 0
0 12 5 1
1
end_operator
begin_operator
move green_disk2 purple_disk1 peg1
1
1 0
3
0 5 0 1
0 3 -1 0
0 12 5 2
1
end_operator
begin_operator
move green_disk2 purple_disk1 peg2
1
1 0
3
0 6 0 1
0 3 -1 0
0 12 5 3
1
end_operator
begin_operator
move green_disk2 purple_disk1 peg3
1
1 0
3
0 7 0 1
0 3 -1 0
0 12 5 4
1
end_operator
begin_operator
move orange_disk1 blue_disk1 peg1
1
2 0
3
0 4 -1 0
0 5 0 1
0 10 0 1
1
end_operator
begin_operator
move orange_disk1 blue_disk1 peg2
1
2 0
3
0 4 -1 0
0 6 0 1
0 10 0 2
1
end_operator
begin_operator
move orange_disk1 blue_disk1 peg3
1
2 0
3
0 4 -1 0
0 7 0 1
0 10 0 3
1
end_operator
begin_operator
move orange_disk1 blue_disk1 purple_disk1
1
2 0
3
0 4 -1 0
0 3 0 1
0 10 0 4
1
end_operator
begin_operator
move orange_disk1 peg1 blue_disk1
1
2 0
3
0 4 0 1
0 5 -1 0
0 10 1 0
1
end_operator
begin_operator
move orange_disk1 peg1 peg2
1
2 0
3
0 5 -1 0
0 6 0 1
0 10 1 2
1
end_operator
begin_operator
move orange_disk1 peg1 peg3
1
2 0
3
0 5 -1 0
0 7 0 1
0 10 1 3
1
end_operator
begin_operator
move orange_disk1 peg1 purple_disk1
1
2 0
3
0 5 -1 0
0 3 0 1
0 10 1 4
1
end_operator
begin_operator
move orange_disk1 peg2 blue_disk1
1
2 0
3
0 4 0 1
0 6 -1 0
0 10 2 0
1
end_operator
begin_operator
move orange_disk1 peg2 peg1
1
2 0
3
0 5 0 1
0 6 -1 0
0 10 2 1
1
end_operator
begin_operator
move orange_disk1 peg2 peg3
1
2 0
3
0 6 -1 0
0 7 0 1
0 10 2 3
1
end_operator
begin_operator
move orange_disk1 peg2 purple_disk1
1
2 0
3
0 6 -1 0
0 3 0 1
0 10 2 4
1
end_operator
begin_operator
move orange_disk1 peg3 blue_disk1
1
2 0
3
0 4 0 1
0 7 -1 0
0 10 3 0
1
end_operator
begin_operator
move orange_disk1 peg3 peg1
1
2 0
3
0 5 0 1
0 7 -1 0
0 10 3 1
1
end_operator
begin_operator
move orange_disk1 peg3 peg2
1
2 0
3
0 6 0 1
0 7 -1 0
0 10 3 2
1
end_operator
begin_operator
move orange_disk1 peg3 purple_disk1
1
2 0
3
0 7 -1 0
0 3 0 1
0 10 3 4
1
end_operator
begin_operator
move orange_disk1 purple_disk1 blue_disk1
1
2 0
3
0 4 0 1
0 3 -1 0
0 10 4 0
1
end_operator
begin_operator
move orange_disk1 purple_disk1 peg1
1
2 0
3
0 5 0 1
0 3 -1 0
0 10 4 1
1
end_operator
begin_operator
move orange_disk1 purple_disk1 peg2
1
2 0
3
0 6 0 1
0 3 -1 0
0 10 4 2
1
end_operator
begin_operator
move orange_disk1 purple_disk1 peg3
1
2 0
3
0 7 0 1
0 3 -1 0
0 10 4 3
1
end_operator
begin_operator
move purple_disk1 blue_disk1 peg1
1
3 0
3
0 4 -1 0
0 5 0 1
0 9 0 1
1
end_operator
begin_operator
move purple_disk1 blue_disk1 peg2
1
3 0
3
0 4 -1 0
0 6 0 1
0 9 0 2
1
end_operator
begin_operator
move purple_disk1 blue_disk1 peg3
1
3 0
3
0 4 -1 0
0 7 0 1
0 9 0 3
1
end_operator
begin_operator
move purple_disk1 peg1 blue_disk1
1
3 0
3
0 4 0 1
0 5 -1 0
0 9 1 0
1
end_operator
begin_operator
move purple_disk1 peg1 peg2
1
3 0
3
0 5 -1 0
0 6 0 1
0 9 1 2
1
end_operator
begin_operator
move purple_disk1 peg1 peg3
1
3 0
3
0 5 -1 0
0 7 0 1
0 9 1 3
1
end_operator
begin_operator
move purple_disk1 peg2 blue_disk1
1
3 0
3
0 4 0 1
0 6 -1 0
0 9 2 0
1
end_operator
begin_operator
move purple_disk1 peg2 peg1
1
3 0
3
0 5 0 1
0 6 -1 0
0 9 2 1
1
end_operator
begin_operator
move purple_disk1 peg2 peg3
1
3 0
3
0 6 -1 0
0 7 0 1
0 9 2 3
1
end_operator
begin_operator
move purple_disk1 peg3 blue_disk1
1
3 0
3
0 4 0 1
0 7 -1 0
0 9 3 0
1
end_operator
begin_operator
move purple_disk1 peg3 peg1
1
3 0
3
0 5 0 1
0 7 -1 0
0 9 3 1
1
end_operator
begin_operator
move purple_disk1 peg3 peg2
1
3 0
3
0 6 0 1
0 7 -1 0
0 9 3 2
1
end_operator
begin_operator
move yellow_disk1 blue_disk1 green_disk2
1
0 0
3
0 4 -1 0
0 1 0 1
0 13 0 1
1
end_operator
begin_operator
move yellow_disk1 blue_disk1 orange_disk1
1
0 0
3
0 4 -1 0
0 2 0 1
0 13 0 2
1
end_operator
begin_operator
move yellow_disk1 blue_disk1 peg1
1
0 0
3
0 4 -1 0
0 5 0 1
0 13 0 3
1
end_operator
begin_operator
move yellow_disk1 blue_disk1 peg2
1
0 0
3
0 4 -1 0
0 6 0 1
0 13 0 4
1
end_operator
begin_operator
move yellow_disk1 blue_disk1 peg3
1
0 0
3
0 4 -1 0
0 7 0 1
0 13 0 5
1
end_operator
begin_operator
move yellow_disk1 blue_disk1 purple_disk1
1
0 0
3
0 4 -1 0
0 3 0 1
0 13 0 6
1
end_operator
begin_operator
move yellow_disk1 green_disk2 blue_disk1
1
0 0
3
0 4 0 1
0 1 -1 0
0 13 1 0
1
end_operator
begin_operator
move yellow_disk1 green_disk2 orange_disk1
1
0 0
3
0 1 -1 0
0 2 0 1
0 13 1 2
1
end_operator
begin_operator
move yellow_disk1 green_disk2 peg1
1
0 0
3
0 1 -1 0
0 5 0 1
0 13 1 3
1
end_operator
begin_operator
move yellow_disk1 green_disk2 peg2
1
0 0
3
0 1 -1 0
0 6 0 1
0 13 1 4
1
end_operator
begin_operator
move yellow_disk1 green_disk2 peg3
1
0 0
3
0 1 -1 0
0 7 0 1
0 13 1 5
1
end_operator
begin_operator
move yellow_disk1 green_disk2 purple_disk1
1
0 0
3
0 1 -1 0
0 3 0 1
0 13 1 6
1
end_operator
begin_operator
move yellow_disk1 orange_disk1 blue_disk1
1
0 0
3
0 4 0 1
0 2 -1 0
0 13 2 0
1
end_operator
begin_operator
move yellow_disk1 orange_disk1 green_disk2
1
0 0
3
0 1 0 1
0 2 -1 0
0 13 2 1
1
end_operator
begin_operator
move yellow_disk1 orange_disk1 peg1
1
0 0
3
0 2 -1 0
0 5 0 1
0 13 2 3
1
end_operator
begin_operator
move yellow_disk1 orange_disk1 peg2
1
0 0
3
0 2 -1 0
0 6 0 1
0 13 2 4
1
end_operator
begin_operator
move yellow_disk1 orange_disk1 peg3
1
0 0
3
0 2 -1 0
0 7 0 1
0 13 2 5
1
end_operator
begin_operator
move yellow_disk1 orange_disk1 purple_disk1
1
0 0
3
0 2 -1 0
0 3 0 1
0 13 2 6
1
end_operator
begin_operator
move yellow_disk1 peg1 blue_disk1
1
0 0
3
0 4 0 1
0 5 -1 0
0 13 3 0
1
end_operator
begin_operator
move yellow_disk1 peg1 green_disk2
1
0 0
3
0 1 0 1
0 5 -1 0
0 13 3 1
1
end_operator
begin_operator
move yellow_disk1 peg1 orange_disk1
1
0 0
3
0 2 0 1
0 5 -1 0
0 13 3 2
1
end_operator
begin_operator
move yellow_disk1 peg1 peg2
1
0 0
3
0 5 -1 0
0 6 0 1
0 13 3 4
1
end_operator
begin_operator
move yellow_disk1 peg1 peg3
1
0 0
3
0 5 -1 0
0 7 0 1
0 13 3 5
1
end_operator
begin_operator
move yellow_disk1 peg1 purple_disk1
1
0 0
3
0 5 -1 0
0 3 0 1
0 13 3 6
1
end_operator
begin_operator
move yellow_disk1 peg2 blue_disk1
1
0 0
3
0 4 0 1
0 6 -1 0
0 13 4 0
1
end_operator
begin_operator
move yellow_disk1 peg2 green_disk2
1
0 0
3
0 1 0 1
0 6 -1 0
0 13 4 1
1
end_operator
begin_operator
move yellow_disk1 peg2 orange_disk1
1
0 0
3
0 2 0 1
0 6 -1 0
0 13 4 2
1
end_operator
begin_operator
move yellow_disk1 peg2 peg1
1
0 0
3
0 5 0 1
0 6 -1 0
0 13 4 3
1
end_operator
begin_operator
move yellow_disk1 peg2 peg3
1
0 0
3
0 6 -1 0
0 7 0 1
0 13 4 5
1
end_operator
begin_operator
move yellow_disk1 peg2 purple_disk1
1
0 0
3
0 6 -1 0
0 3 0 1
0 13 4 6
1
end_operator
begin_operator
move yellow_disk1 peg3 blue_disk1
1
0 0
3
0 4 0 1
0 7 -1 0
0 13 5 0
1
end_operator
begin_operator
move yellow_disk1 peg3 green_disk2
1
0 0
3
0 1 0 1
0 7 -1 0
0 13 5 1
1
end_operator
begin_operator
move yellow_disk1 peg3 orange_disk1
1
0 0
3
0 2 0 1
0 7 -1 0
0 13 5 2
1
end_operator
begin_operator
move yellow_disk1 peg3 peg1
1
0 0
3
0 5 0 1
0 7 -1 0
0 13 5 3
1
end_operator
begin_operator
move yellow_disk1 peg3 peg2
1
0 0
3
0 6 0 1
0 7 -1 0
0 13 5 4
1
end_operator
begin_operator
move yellow_disk1 peg3 purple_disk1
1
0 0
3
0 7 -1 0
0 3 0 1
0 13 5 6
1
end_operator
begin_operator
move yellow_disk1 purple_disk1 blue_disk1
1
0 0
3
0 4 0 1
0 3 -1 0
0 13 6 0
1
end_operator
begin_operator
move yellow_disk1 purple_disk1 green_disk2
1
0 0
3
0 1 0 1
0 3 -1 0
0 13 6 1
1
end_operator
begin_operator
move yellow_disk1 purple_disk1 orange_disk1
1
0 0
3
0 2 0 1
0 3 -1 0
0 13 6 2
1
end_operator
begin_operator
move yellow_disk1 purple_disk1 peg1
1
0 0
3
0 5 0 1
0 3 -1 0
0 13 6 3
1
end_operator
begin_operator
move yellow_disk1 purple_disk1 peg2
1
0 0
3
0 6 0 1
0 3 -1 0
0 13 6 4
1
end_operator
begin_operator
move yellow_disk1 purple_disk1 peg3
1
0 0
3
0 7 0 1
0 3 -1 0
0 13 6 5
1
end_operator
0
