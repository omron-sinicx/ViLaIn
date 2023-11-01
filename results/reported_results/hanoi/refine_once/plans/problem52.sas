begin_version
3
end_version
begin_metric
0
end_metric
11
begin_variable
var0
-1
2
Atom clear(blue_disk3)
Atom on(blue_disk2, blue_disk3)
end_variable
begin_variable
var1
-1
9
Atom clear(peg1)
Atom on(blue_disk1, peg1)
Atom on(blue_disk2, peg1)
Atom on(blue_disk3, peg1)
Atom on(green_disk1, peg1)
Atom on(orange_disk1, peg1)
Atom on(orange_disk2, peg1)
Atom on(purple_disk1, peg1)
Atom on(yellow_disk1, peg1)
end_variable
begin_variable
var2
-1
9
Atom clear(peg2)
Atom on(blue_disk1, peg2)
Atom on(blue_disk2, peg2)
Atom on(blue_disk3, peg2)
Atom on(green_disk1, peg2)
Atom on(orange_disk1, peg2)
Atom on(orange_disk2, peg2)
Atom on(purple_disk1, peg2)
Atom on(yellow_disk1, peg2)
end_variable
begin_variable
var3
-1
2
Atom clear(blue_disk1)
Atom on(green_disk1, blue_disk1)
end_variable
begin_variable
var4
-1
3
Atom clear(blue_disk2)
Atom on(blue_disk3, blue_disk2)
Atom on(purple_disk1, blue_disk2)
end_variable
begin_variable
var5
-1
3
Atom clear(green_disk1)
Atom on(blue_disk1, green_disk1)
Atom on(orange_disk1, green_disk1)
end_variable
begin_variable
var6
-1
3
Atom clear(purple_disk1)
Atom on(blue_disk2, purple_disk1)
Atom on(orange_disk2, purple_disk1)
end_variable
begin_variable
var7
-1
3
Atom clear(orange_disk2)
Atom on(purple_disk1, orange_disk2)
Atom on(yellow_disk1, orange_disk2)
end_variable
begin_variable
var8
-1
3
Atom clear(yellow_disk1)
Atom on(orange_disk1, yellow_disk1)
Atom on(orange_disk2, yellow_disk1)
end_variable
begin_variable
var9
-1
3
Atom clear(orange_disk1)
Atom on(green_disk1, orange_disk1)
Atom on(yellow_disk1, orange_disk1)
end_variable
begin_variable
var10
-1
9
Atom clear(peg3)
Atom on(blue_disk1, peg3)
Atom on(blue_disk2, peg3)
Atom on(blue_disk3, peg3)
Atom on(green_disk1, peg3)
Atom on(orange_disk1, peg3)
Atom on(orange_disk2, peg3)
Atom on(purple_disk1, peg3)
Atom on(yellow_disk1, peg3)
end_variable
8
begin_mutex_group
4
5 1
1 1
2 1
10 1
end_mutex_group
begin_mutex_group
5
0 1
1 2
2 2
10 2
6 1
end_mutex_group
begin_mutex_group
4
4 1
1 3
2 3
10 3
end_mutex_group
begin_mutex_group
5
3 1
9 1
1 4
2 4
10 4
end_mutex_group
begin_mutex_group
5
5 2
1 5
2 5
10 5
8 1
end_mutex_group
begin_mutex_group
5
1 6
2 6
10 6
6 2
8 2
end_mutex_group
begin_mutex_group
5
4 2
7 1
1 7
2 7
10 7
end_mutex_group
begin_mutex_group
5
9 2
7 2
1 8
2 8
10 8
end_mutex_group
begin_state
1
3
0
0
2
1
2
2
1
1
0
end_state
begin_goal
8
3 1
4 1
5 2
6 1
7 1
8 2
9 2
10 1
end_goal
117
begin_operator
move blue_disk1 green_disk1 peg1
1
3 0
2
0 5 1 0
0 1 0 1
1
end_operator
begin_operator
move blue_disk1 green_disk1 peg2
1
3 0
2
0 5 1 0
0 2 0 1
1
end_operator
begin_operator
move blue_disk1 green_disk1 peg3
1
3 0
2
0 5 1 0
0 10 0 1
1
end_operator
begin_operator
move blue_disk1 peg1 peg2
1
3 0
2
0 1 1 0
0 2 0 1
1
end_operator
begin_operator
move blue_disk1 peg1 peg3
1
3 0
2
0 1 1 0
0 10 0 1
1
end_operator
begin_operator
move blue_disk1 peg2 peg1
1
3 0
2
0 1 0 1
0 2 1 0
1
end_operator
begin_operator
move blue_disk1 peg2 peg3
1
3 0
2
0 2 1 0
0 10 0 1
1
end_operator
begin_operator
move blue_disk1 peg3 peg1
1
3 0
2
0 1 0 1
0 10 1 0
1
end_operator
begin_operator
move blue_disk1 peg3 peg2
1
3 0
2
0 2 0 1
0 10 1 0
1
end_operator
begin_operator
move blue_disk2 blue_disk3 peg1
1
4 0
2
0 0 1 0
0 1 0 2
1
end_operator
begin_operator
move blue_disk2 blue_disk3 peg2
1
4 0
2
0 0 1 0
0 2 0 2
1
end_operator
begin_operator
move blue_disk2 blue_disk3 peg3
1
4 0
2
0 0 1 0
0 10 0 2
1
end_operator
begin_operator
move blue_disk2 blue_disk3 purple_disk1
1
4 0
2
0 0 1 0
0 6 0 1
1
end_operator
begin_operator
move blue_disk2 peg1 peg2
1
4 0
2
0 1 2 0
0 2 0 2
1
end_operator
begin_operator
move blue_disk2 peg1 peg3
1
4 0
2
0 1 2 0
0 10 0 2
1
end_operator
begin_operator
move blue_disk2 peg1 purple_disk1
1
4 0
2
0 1 2 0
0 6 0 1
1
end_operator
begin_operator
move blue_disk2 peg2 peg1
1
4 0
2
0 1 0 2
0 2 2 0
1
end_operator
begin_operator
move blue_disk2 peg2 peg3
1
4 0
2
0 2 2 0
0 10 0 2
1
end_operator
begin_operator
move blue_disk2 peg2 purple_disk1
1
4 0
2
0 2 2 0
0 6 0 1
1
end_operator
begin_operator
move blue_disk2 peg3 peg1
1
4 0
2
0 1 0 2
0 10 2 0
1
end_operator
begin_operator
move blue_disk2 peg3 peg2
1
4 0
2
0 2 0 2
0 10 2 0
1
end_operator
begin_operator
move blue_disk2 peg3 purple_disk1
1
4 0
2
0 10 2 0
0 6 0 1
1
end_operator
begin_operator
move blue_disk2 purple_disk1 peg1
1
4 0
2
0 1 0 2
0 6 1 0
1
end_operator
begin_operator
move blue_disk2 purple_disk1 peg2
1
4 0
2
0 2 0 2
0 6 1 0
1
end_operator
begin_operator
move blue_disk2 purple_disk1 peg3
1
4 0
2
0 10 0 2
0 6 1 0
1
end_operator
begin_operator
move blue_disk3 blue_disk2 peg1
1
0 0
2
0 4 1 0
0 1 0 3
1
end_operator
begin_operator
move blue_disk3 blue_disk2 peg2
1
0 0
2
0 4 1 0
0 2 0 3
1
end_operator
begin_operator
move blue_disk3 blue_disk2 peg3
1
0 0
2
0 4 1 0
0 10 0 3
1
end_operator
begin_operator
move blue_disk3 peg1 blue_disk2
1
0 0
2
0 4 0 1
0 1 3 0
1
end_operator
begin_operator
move blue_disk3 peg1 peg2
1
0 0
2
0 1 3 0
0 2 0 3
1
end_operator
begin_operator
move blue_disk3 peg1 peg3
1
0 0
2
0 1 3 0
0 10 0 3
1
end_operator
begin_operator
move blue_disk3 peg2 blue_disk2
1
0 0
2
0 4 0 1
0 2 3 0
1
end_operator
begin_operator
move blue_disk3 peg2 peg1
1
0 0
2
0 1 0 3
0 2 3 0
1
end_operator
begin_operator
move blue_disk3 peg2 peg3
1
0 0
2
0 2 3 0
0 10 0 3
1
end_operator
begin_operator
move blue_disk3 peg3 blue_disk2
1
0 0
2
0 4 0 1
0 10 3 0
1
end_operator
begin_operator
move blue_disk3 peg3 peg1
1
0 0
2
0 1 0 3
0 10 3 0
1
end_operator
begin_operator
move blue_disk3 peg3 peg2
1
0 0
2
0 2 0 3
0 10 3 0
1
end_operator
begin_operator
move green_disk1 blue_disk1 peg1
1
5 0
2
0 3 1 0
0 1 0 4
1
end_operator
begin_operator
move green_disk1 blue_disk1 peg2
1
5 0
2
0 3 1 0
0 2 0 4
1
end_operator
begin_operator
move green_disk1 blue_disk1 peg3
1
5 0
2
0 3 1 0
0 10 0 4
1
end_operator
begin_operator
move green_disk1 orange_disk1 blue_disk1
1
5 0
2
0 3 0 1
0 9 1 0
1
end_operator
begin_operator
move green_disk1 orange_disk1 peg1
1
5 0
2
0 9 1 0
0 1 0 4
1
end_operator
begin_operator
move green_disk1 orange_disk1 peg2
1
5 0
2
0 9 1 0
0 2 0 4
1
end_operator
begin_operator
move green_disk1 orange_disk1 peg3
1
5 0
2
0 9 1 0
0 10 0 4
1
end_operator
begin_operator
move green_disk1 peg1 blue_disk1
1
5 0
2
0 3 0 1
0 1 4 0
1
end_operator
begin_operator
move green_disk1 peg1 peg2
1
5 0
2
0 1 4 0
0 2 0 4
1
end_operator
begin_operator
move green_disk1 peg1 peg3
1
5 0
2
0 1 4 0
0 10 0 4
1
end_operator
begin_operator
move green_disk1 peg2 blue_disk1
1
5 0
2
0 3 0 1
0 2 4 0
1
end_operator
begin_operator
move green_disk1 peg2 peg1
1
5 0
2
0 1 0 4
0 2 4 0
1
end_operator
begin_operator
move green_disk1 peg2 peg3
1
5 0
2
0 2 4 0
0 10 0 4
1
end_operator
begin_operator
move green_disk1 peg3 blue_disk1
1
5 0
2
0 3 0 1
0 10 4 0
1
end_operator
begin_operator
move green_disk1 peg3 peg1
1
5 0
2
0 1 0 4
0 10 4 0
1
end_operator
begin_operator
move green_disk1 peg3 peg2
1
5 0
2
0 2 0 4
0 10 4 0
1
end_operator
begin_operator
move orange_disk1 green_disk1 peg1
1
9 0
2
0 5 2 0
0 1 0 5
1
end_operator
begin_operator
move orange_disk1 green_disk1 peg2
1
9 0
2
0 5 2 0
0 2 0 5
1
end_operator
begin_operator
move orange_disk1 green_disk1 peg3
1
9 0
2
0 5 2 0
0 10 0 5
1
end_operator
begin_operator
move orange_disk1 peg1 green_disk1
1
9 0
2
0 5 0 2
0 1 5 0
1
end_operator
begin_operator
move orange_disk1 peg1 peg2
1
9 0
2
0 1 5 0
0 2 0 5
1
end_operator
begin_operator
move orange_disk1 peg1 peg3
1
9 0
2
0 1 5 0
0 10 0 5
1
end_operator
begin_operator
move orange_disk1 peg2 green_disk1
1
9 0
2
0 5 0 2
0 2 5 0
1
end_operator
begin_operator
move orange_disk1 peg2 peg1
1
9 0
2
0 1 0 5
0 2 5 0
1
end_operator
begin_operator
move orange_disk1 peg2 peg3
1
9 0
2
0 2 5 0
0 10 0 5
1
end_operator
begin_operator
move orange_disk1 peg3 green_disk1
1
9 0
2
0 5 0 2
0 10 5 0
1
end_operator
begin_operator
move orange_disk1 peg3 peg1
1
9 0
2
0 1 0 5
0 10 5 0
1
end_operator
begin_operator
move orange_disk1 peg3 peg2
1
9 0
2
0 2 0 5
0 10 5 0
1
end_operator
begin_operator
move orange_disk1 yellow_disk1 green_disk1
1
9 0
2
0 5 0 2
0 8 1 0
1
end_operator
begin_operator
move orange_disk1 yellow_disk1 peg1
1
9 0
2
0 1 0 5
0 8 1 0
1
end_operator
begin_operator
move orange_disk1 yellow_disk1 peg2
1
9 0
2
0 2 0 5
0 8 1 0
1
end_operator
begin_operator
move orange_disk1 yellow_disk1 peg3
1
9 0
2
0 10 0 5
0 8 1 0
1
end_operator
begin_operator
move orange_disk2 peg1 peg2
1
7 0
2
0 1 6 0
0 2 0 6
1
end_operator
begin_operator
move orange_disk2 peg1 peg3
1
7 0
2
0 1 6 0
0 10 0 6
1
end_operator
begin_operator
move orange_disk2 peg1 yellow_disk1
1
7 0
2
0 1 6 0
0 8 0 2
1
end_operator
begin_operator
move orange_disk2 peg2 peg1
1
7 0
2
0 1 0 6
0 2 6 0
1
end_operator
begin_operator
move orange_disk2 peg2 peg3
1
7 0
2
0 2 6 0
0 10 0 6
1
end_operator
begin_operator
move orange_disk2 peg2 yellow_disk1
1
7 0
2
0 2 6 0
0 8 0 2
1
end_operator
begin_operator
move orange_disk2 peg3 peg1
1
7 0
2
0 1 0 6
0 10 6 0
1
end_operator
begin_operator
move orange_disk2 peg3 peg2
1
7 0
2
0 2 0 6
0 10 6 0
1
end_operator
begin_operator
move orange_disk2 peg3 yellow_disk1
1
7 0
2
0 10 6 0
0 8 0 2
1
end_operator
begin_operator
move orange_disk2 purple_disk1 peg1
1
7 0
2
0 1 0 6
0 6 2 0
1
end_operator
begin_operator
move orange_disk2 purple_disk1 peg2
1
7 0
2
0 2 0 6
0 6 2 0
1
end_operator
begin_operator
move orange_disk2 purple_disk1 peg3
1
7 0
2
0 10 0 6
0 6 2 0
1
end_operator
begin_operator
move orange_disk2 purple_disk1 yellow_disk1
1
7 0
2
0 6 2 0
0 8 0 2
1
end_operator
begin_operator
move orange_disk2 yellow_disk1 peg1
1
7 0
2
0 1 0 6
0 8 2 0
1
end_operator
begin_operator
move orange_disk2 yellow_disk1 peg2
1
7 0
2
0 2 0 6
0 8 2 0
1
end_operator
begin_operator
move orange_disk2 yellow_disk1 peg3
1
7 0
2
0 10 0 6
0 8 2 0
1
end_operator
begin_operator
move purple_disk1 blue_disk2 orange_disk2
1
6 0
2
0 4 2 0
0 7 0 1
1
end_operator
begin_operator
move purple_disk1 blue_disk2 peg1
1
6 0
2
0 4 2 0
0 1 0 7
1
end_operator
begin_operator
move purple_disk1 blue_disk2 peg2
1
6 0
2
0 4 2 0
0 2 0 7
1
end_operator
begin_operator
move purple_disk1 blue_disk2 peg3
1
6 0
2
0 4 2 0
0 10 0 7
1
end_operator
begin_operator
move purple_disk1 orange_disk2 peg1
1
6 0
2
0 7 1 0
0 1 0 7
1
end_operator
begin_operator
move purple_disk1 orange_disk2 peg2
1
6 0
2
0 7 1 0
0 2 0 7
1
end_operator
begin_operator
move purple_disk1 orange_disk2 peg3
1
6 0
2
0 7 1 0
0 10 0 7
1
end_operator
begin_operator
move purple_disk1 peg1 orange_disk2
1
6 0
2
0 7 0 1
0 1 7 0
1
end_operator
begin_operator
move purple_disk1 peg1 peg2
1
6 0
2
0 1 7 0
0 2 0 7
1
end_operator
begin_operator
move purple_disk1 peg1 peg3
1
6 0
2
0 1 7 0
0 10 0 7
1
end_operator
begin_operator
move purple_disk1 peg2 orange_disk2
1
6 0
2
0 7 0 1
0 2 7 0
1
end_operator
begin_operator
move purple_disk1 peg2 peg1
1
6 0
2
0 1 0 7
0 2 7 0
1
end_operator
begin_operator
move purple_disk1 peg2 peg3
1
6 0
2
0 2 7 0
0 10 0 7
1
end_operator
begin_operator
move purple_disk1 peg3 orange_disk2
1
6 0
2
0 7 0 1
0 10 7 0
1
end_operator
begin_operator
move purple_disk1 peg3 peg1
1
6 0
2
0 1 0 7
0 10 7 0
1
end_operator
begin_operator
move purple_disk1 peg3 peg2
1
6 0
2
0 2 0 7
0 10 7 0
1
end_operator
begin_operator
move yellow_disk1 orange_disk1 peg1
1
8 0
2
0 9 2 0
0 1 0 8
1
end_operator
begin_operator
move yellow_disk1 orange_disk1 peg2
1
8 0
2
0 9 2 0
0 2 0 8
1
end_operator
begin_operator
move yellow_disk1 orange_disk1 peg3
1
8 0
2
0 9 2 0
0 10 0 8
1
end_operator
begin_operator
move yellow_disk1 orange_disk2 orange_disk1
1
8 0
2
0 9 0 2
0 7 2 0
1
end_operator
begin_operator
move yellow_disk1 orange_disk2 peg1
1
8 0
2
0 7 2 0
0 1 0 8
1
end_operator
begin_operator
move yellow_disk1 orange_disk2 peg2
1
8 0
2
0 7 2 0
0 2 0 8
1
end_operator
begin_operator
move yellow_disk1 orange_disk2 peg3
1
8 0
2
0 7 2 0
0 10 0 8
1
end_operator
begin_operator
move yellow_disk1 peg1 orange_disk1
1
8 0
2
0 9 0 2
0 1 8 0
1
end_operator
begin_operator
move yellow_disk1 peg1 peg2
1
8 0
2
0 1 8 0
0 2 0 8
1
end_operator
begin_operator
move yellow_disk1 peg1 peg3
1
8 0
2
0 1 8 0
0 10 0 8
1
end_operator
begin_operator
move yellow_disk1 peg2 orange_disk1
1
8 0
2
0 9 0 2
0 2 8 0
1
end_operator
begin_operator
move yellow_disk1 peg2 peg1
1
8 0
2
0 1 0 8
0 2 8 0
1
end_operator
begin_operator
move yellow_disk1 peg2 peg3
1
8 0
2
0 2 8 0
0 10 0 8
1
end_operator
begin_operator
move yellow_disk1 peg3 orange_disk1
1
8 0
2
0 9 0 2
0 10 8 0
1
end_operator
begin_operator
move yellow_disk1 peg3 peg1
1
8 0
2
0 1 0 8
0 10 8 0
1
end_operator
begin_operator
move yellow_disk1 peg3 peg2
1
8 0
2
0 2 0 8
0 10 8 0
1
end_operator
0
