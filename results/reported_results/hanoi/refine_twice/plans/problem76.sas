begin_version
3
end_version
begin_metric
0
end_metric
8
begin_variable
var0
-1
7
Atom clear(peg1)
Atom on(blue_disk1, peg1)
Atom on(green_disk1, peg1)
Atom on(green_disk2, peg1)
Atom on(orange_disk1, peg1)
Atom on(purple_disk1, peg1)
Atom on(yellow_disk1, peg1)
end_variable
begin_variable
var1
-1
7
Atom clear(peg2)
Atom on(blue_disk1, peg2)
Atom on(green_disk1, peg2)
Atom on(green_disk2, peg2)
Atom on(orange_disk1, peg2)
Atom on(purple_disk1, peg2)
Atom on(yellow_disk1, peg2)
end_variable
begin_variable
var2
-1
2
Atom clear(purple_disk1)
Atom on(blue_disk1, purple_disk1)
end_variable
begin_variable
var3
-1
2
Atom clear(orange_disk1)
Atom on(purple_disk1, orange_disk1)
end_variable
begin_variable
var4
-1
2
Atom clear(green_disk2)
Atom on(orange_disk1, green_disk2)
end_variable
begin_variable
var5
-1
2
Atom clear(yellow_disk1)
Atom on(green_disk2, yellow_disk1)
end_variable
begin_variable
var6
-1
2
Atom clear(green_disk1)
Atom on(yellow_disk1, green_disk1)
end_variable
begin_variable
var7
-1
7
Atom clear(peg3)
Atom on(blue_disk1, peg3)
Atom on(green_disk1, peg3)
Atom on(green_disk2, peg3)
Atom on(orange_disk1, peg3)
Atom on(purple_disk1, peg3)
Atom on(yellow_disk1, peg3)
end_variable
6
begin_mutex_group
4
0 1
1 1
7 1
2 1
end_mutex_group
begin_mutex_group
3
0 2
1 2
7 2
end_mutex_group
begin_mutex_group
4
0 3
1 3
7 3
5 1
end_mutex_group
begin_mutex_group
4
4 1
0 4
1 4
7 4
end_mutex_group
begin_mutex_group
4
3 1
0 5
1 5
7 5
end_mutex_group
begin_mutex_group
4
6 1
0 6
1 6
7 6
end_mutex_group
begin_state
2
0
1
1
1
1
1
0
end_state
begin_goal
6
2 1
3 1
4 1
5 1
6 1
7 2
end_goal
66
begin_operator
move blue_disk1 peg1 peg2
0
2
0 0 1 0
0 1 0 1
1
end_operator
begin_operator
move blue_disk1 peg1 peg3
0
2
0 0 1 0
0 7 0 1
1
end_operator
begin_operator
move blue_disk1 peg1 purple_disk1
0
2
0 0 1 0
0 2 0 1
1
end_operator
begin_operator
move blue_disk1 peg2 peg1
0
2
0 0 0 1
0 1 1 0
1
end_operator
begin_operator
move blue_disk1 peg2 peg3
0
2
0 1 1 0
0 7 0 1
1
end_operator
begin_operator
move blue_disk1 peg2 purple_disk1
0
2
0 1 1 0
0 2 0 1
1
end_operator
begin_operator
move blue_disk1 peg3 peg1
0
2
0 0 0 1
0 7 1 0
1
end_operator
begin_operator
move blue_disk1 peg3 peg2
0
2
0 1 0 1
0 7 1 0
1
end_operator
begin_operator
move blue_disk1 peg3 purple_disk1
0
2
0 7 1 0
0 2 0 1
1
end_operator
begin_operator
move blue_disk1 purple_disk1 peg1
0
2
0 0 0 1
0 2 1 0
1
end_operator
begin_operator
move blue_disk1 purple_disk1 peg2
0
2
0 1 0 1
0 2 1 0
1
end_operator
begin_operator
move blue_disk1 purple_disk1 peg3
0
2
0 7 0 1
0 2 1 0
1
end_operator
begin_operator
move green_disk1 peg1 peg2
1
6 0
2
0 0 2 0
0 1 0 2
1
end_operator
begin_operator
move green_disk1 peg1 peg3
1
6 0
2
0 0 2 0
0 7 0 2
1
end_operator
begin_operator
move green_disk1 peg2 peg1
1
6 0
2
0 0 0 2
0 1 2 0
1
end_operator
begin_operator
move green_disk1 peg2 peg3
1
6 0
2
0 1 2 0
0 7 0 2
1
end_operator
begin_operator
move green_disk1 peg3 peg1
1
6 0
2
0 0 0 2
0 7 2 0
1
end_operator
begin_operator
move green_disk1 peg3 peg2
1
6 0
2
0 1 0 2
0 7 2 0
1
end_operator
begin_operator
move green_disk2 peg1 peg2
1
4 0
2
0 0 3 0
0 1 0 3
1
end_operator
begin_operator
move green_disk2 peg1 peg3
1
4 0
2
0 0 3 0
0 7 0 3
1
end_operator
begin_operator
move green_disk2 peg1 yellow_disk1
1
4 0
2
0 0 3 0
0 5 0 1
1
end_operator
begin_operator
move green_disk2 peg2 peg1
1
4 0
2
0 0 0 3
0 1 3 0
1
end_operator
begin_operator
move green_disk2 peg2 peg3
1
4 0
2
0 1 3 0
0 7 0 3
1
end_operator
begin_operator
move green_disk2 peg2 yellow_disk1
1
4 0
2
0 1 3 0
0 5 0 1
1
end_operator
begin_operator
move green_disk2 peg3 peg1
1
4 0
2
0 0 0 3
0 7 3 0
1
end_operator
begin_operator
move green_disk2 peg3 peg2
1
4 0
2
0 1 0 3
0 7 3 0
1
end_operator
begin_operator
move green_disk2 peg3 yellow_disk1
1
4 0
2
0 7 3 0
0 5 0 1
1
end_operator
begin_operator
move green_disk2 yellow_disk1 peg1
1
4 0
2
0 0 0 3
0 5 1 0
1
end_operator
begin_operator
move green_disk2 yellow_disk1 peg2
1
4 0
2
0 1 0 3
0 5 1 0
1
end_operator
begin_operator
move green_disk2 yellow_disk1 peg3
1
4 0
2
0 7 0 3
0 5 1 0
1
end_operator
begin_operator
move orange_disk1 green_disk2 peg1
1
3 0
2
0 4 1 0
0 0 0 4
1
end_operator
begin_operator
move orange_disk1 green_disk2 peg2
1
3 0
2
0 4 1 0
0 1 0 4
1
end_operator
begin_operator
move orange_disk1 green_disk2 peg3
1
3 0
2
0 4 1 0
0 7 0 4
1
end_operator
begin_operator
move orange_disk1 peg1 green_disk2
1
3 0
2
0 4 0 1
0 0 4 0
1
end_operator
begin_operator
move orange_disk1 peg1 peg2
1
3 0
2
0 0 4 0
0 1 0 4
1
end_operator
begin_operator
move orange_disk1 peg1 peg3
1
3 0
2
0 0 4 0
0 7 0 4
1
end_operator
begin_operator
move orange_disk1 peg2 green_disk2
1
3 0
2
0 4 0 1
0 1 4 0
1
end_operator
begin_operator
move orange_disk1 peg2 peg1
1
3 0
2
0 0 0 4
0 1 4 0
1
end_operator
begin_operator
move orange_disk1 peg2 peg3
1
3 0
2
0 1 4 0
0 7 0 4
1
end_operator
begin_operator
move orange_disk1 peg3 green_disk2
1
3 0
2
0 4 0 1
0 7 4 0
1
end_operator
begin_operator
move orange_disk1 peg3 peg1
1
3 0
2
0 0 0 4
0 7 4 0
1
end_operator
begin_operator
move orange_disk1 peg3 peg2
1
3 0
2
0 1 0 4
0 7 4 0
1
end_operator
begin_operator
move purple_disk1 orange_disk1 peg1
1
2 0
2
0 3 1 0
0 0 0 5
1
end_operator
begin_operator
move purple_disk1 orange_disk1 peg2
1
2 0
2
0 3 1 0
0 1 0 5
1
end_operator
begin_operator
move purple_disk1 orange_disk1 peg3
1
2 0
2
0 3 1 0
0 7 0 5
1
end_operator
begin_operator
move purple_disk1 peg1 orange_disk1
1
2 0
2
0 3 0 1
0 0 5 0
1
end_operator
begin_operator
move purple_disk1 peg1 peg2
1
2 0
2
0 0 5 0
0 1 0 5
1
end_operator
begin_operator
move purple_disk1 peg1 peg3
1
2 0
2
0 0 5 0
0 7 0 5
1
end_operator
begin_operator
move purple_disk1 peg2 orange_disk1
1
2 0
2
0 3 0 1
0 1 5 0
1
end_operator
begin_operator
move purple_disk1 peg2 peg1
1
2 0
2
0 0 0 5
0 1 5 0
1
end_operator
begin_operator
move purple_disk1 peg2 peg3
1
2 0
2
0 1 5 0
0 7 0 5
1
end_operator
begin_operator
move purple_disk1 peg3 orange_disk1
1
2 0
2
0 3 0 1
0 7 5 0
1
end_operator
begin_operator
move purple_disk1 peg3 peg1
1
2 0
2
0 0 0 5
0 7 5 0
1
end_operator
begin_operator
move purple_disk1 peg3 peg2
1
2 0
2
0 1 0 5
0 7 5 0
1
end_operator
begin_operator
move yellow_disk1 green_disk1 peg1
1
5 0
2
0 6 1 0
0 0 0 6
1
end_operator
begin_operator
move yellow_disk1 green_disk1 peg2
1
5 0
2
0 6 1 0
0 1 0 6
1
end_operator
begin_operator
move yellow_disk1 green_disk1 peg3
1
5 0
2
0 6 1 0
0 7 0 6
1
end_operator
begin_operator
move yellow_disk1 peg1 green_disk1
1
5 0
2
0 6 0 1
0 0 6 0
1
end_operator
begin_operator
move yellow_disk1 peg1 peg2
1
5 0
2
0 0 6 0
0 1 0 6
1
end_operator
begin_operator
move yellow_disk1 peg1 peg3
1
5 0
2
0 0 6 0
0 7 0 6
1
end_operator
begin_operator
move yellow_disk1 peg2 green_disk1
1
5 0
2
0 6 0 1
0 1 6 0
1
end_operator
begin_operator
move yellow_disk1 peg2 peg1
1
5 0
2
0 0 0 6
0 1 6 0
1
end_operator
begin_operator
move yellow_disk1 peg2 peg3
1
5 0
2
0 1 6 0
0 7 0 6
1
end_operator
begin_operator
move yellow_disk1 peg3 green_disk1
1
5 0
2
0 6 0 1
0 7 6 0
1
end_operator
begin_operator
move yellow_disk1 peg3 peg1
1
5 0
2
0 0 0 6
0 7 6 0
1
end_operator
begin_operator
move yellow_disk1 peg3 peg2
1
5 0
2
0 1 0 6
0 7 6 0
1
end_operator
0
