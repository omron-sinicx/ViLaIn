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
Atom clear(orange_disk1)
NegatedAtom clear(orange_disk1)
end_variable
begin_variable
var1
-1
2
Atom clear(blue_disk2)
NegatedAtom clear(blue_disk2)
end_variable
begin_variable
var2
-1
2
Atom clear(green_disk1)
NegatedAtom clear(green_disk1)
end_variable
begin_variable
var3
-1
2
Atom clear(blue_disk1)
NegatedAtom clear(blue_disk1)
end_variable
begin_variable
var4
-1
2
Atom clear(peg1)
NegatedAtom clear(peg1)
end_variable
begin_variable
var5
-1
2
Atom clear(peg4)
NegatedAtom clear(peg4)
end_variable
begin_variable
var6
-1
2
Atom clear(peg5)
NegatedAtom clear(peg5)
end_variable
begin_variable
var7
-1
4
Atom on(blue_disk1, green_disk1)
Atom on(blue_disk1, peg1)
Atom on(blue_disk1, peg4)
Atom on(blue_disk1, peg5)
end_variable
begin_variable
var8
-1
5
Atom on(green_disk1, blue_disk1)
Atom on(green_disk1, blue_disk2)
Atom on(green_disk1, peg1)
Atom on(green_disk1, peg4)
Atom on(green_disk1, peg5)
end_variable
begin_variable
var9
-1
6
Atom on(blue_disk2, blue_disk1)
Atom on(blue_disk2, green_disk1)
Atom on(blue_disk2, orange_disk1)
Atom on(blue_disk2, peg1)
Atom on(blue_disk2, peg4)
Atom on(blue_disk2, peg5)
end_variable
begin_variable
var10
-1
6
Atom on(orange_disk1, blue_disk1)
Atom on(orange_disk1, blue_disk2)
Atom on(orange_disk1, green_disk1)
Atom on(orange_disk1, peg1)
Atom on(orange_disk1, peg4)
Atom on(orange_disk1, peg5)
end_variable
7
begin_mutex_group
4
3 0
9 0
8 0
10 0
end_mutex_group
begin_mutex_group
3
1 0
8 1
10 1
end_mutex_group
begin_mutex_group
4
2 0
7 0
9 1
10 2
end_mutex_group
begin_mutex_group
2
0 0
9 2
end_mutex_group
begin_mutex_group
5
4 0
7 1
9 3
8 2
10 3
end_mutex_group
begin_mutex_group
5
5 0
7 2
9 4
8 3
10 4
end_mutex_group
begin_mutex_group
5
6 0
7 3
9 5
8 4
10 5
end_mutex_group
begin_state
1
1
1
0
1
0
0
0
1
2
3
end_state
begin_goal
4
7 3
8 0
9 1
10 1
end_goal
80
begin_operator
move blue_disk1 green_disk1 peg1
1
3 0
3
0 2 -1 0
0 4 0 1
0 7 0 1
1
end_operator
begin_operator
move blue_disk1 green_disk1 peg4
1
3 0
3
0 2 -1 0
0 5 0 1
0 7 0 2
1
end_operator
begin_operator
move blue_disk1 green_disk1 peg5
1
3 0
3
0 2 -1 0
0 6 0 1
0 7 0 3
1
end_operator
begin_operator
move blue_disk1 peg1 peg4
1
3 0
3
0 4 -1 0
0 5 0 1
0 7 1 2
1
end_operator
begin_operator
move blue_disk1 peg1 peg5
1
3 0
3
0 4 -1 0
0 6 0 1
0 7 1 3
1
end_operator
begin_operator
move blue_disk1 peg4 peg1
1
3 0
3
0 4 0 1
0 5 -1 0
0 7 2 1
1
end_operator
begin_operator
move blue_disk1 peg4 peg5
1
3 0
3
0 5 -1 0
0 6 0 1
0 7 2 3
1
end_operator
begin_operator
move blue_disk1 peg5 peg1
1
3 0
3
0 4 0 1
0 6 -1 0
0 7 3 1
1
end_operator
begin_operator
move blue_disk1 peg5 peg4
1
3 0
3
0 5 0 1
0 6 -1 0
0 7 3 2
1
end_operator
begin_operator
move blue_disk2 blue_disk1 green_disk1
1
1 0
3
0 3 -1 0
0 2 0 1
0 9 0 1
1
end_operator
begin_operator
move blue_disk2 blue_disk1 peg1
1
1 0
3
0 3 -1 0
0 4 0 1
0 9 0 3
1
end_operator
begin_operator
move blue_disk2 blue_disk1 peg4
1
1 0
3
0 3 -1 0
0 5 0 1
0 9 0 4
1
end_operator
begin_operator
move blue_disk2 blue_disk1 peg5
1
1 0
3
0 3 -1 0
0 6 0 1
0 9 0 5
1
end_operator
begin_operator
move blue_disk2 green_disk1 blue_disk1
1
1 0
3
0 3 0 1
0 2 -1 0
0 9 1 0
1
end_operator
begin_operator
move blue_disk2 green_disk1 peg1
1
1 0
3
0 2 -1 0
0 4 0 1
0 9 1 3
1
end_operator
begin_operator
move blue_disk2 green_disk1 peg4
1
1 0
3
0 2 -1 0
0 5 0 1
0 9 1 4
1
end_operator
begin_operator
move blue_disk2 green_disk1 peg5
1
1 0
3
0 2 -1 0
0 6 0 1
0 9 1 5
1
end_operator
begin_operator
move blue_disk2 orange_disk1 blue_disk1
1
1 0
3
0 3 0 1
0 0 -1 0
0 9 2 0
1
end_operator
begin_operator
move blue_disk2 orange_disk1 green_disk1
1
1 0
3
0 2 0 1
0 0 -1 0
0 9 2 1
1
end_operator
begin_operator
move blue_disk2 orange_disk1 peg1
1
1 0
3
0 0 -1 0
0 4 0 1
0 9 2 3
1
end_operator
begin_operator
move blue_disk2 orange_disk1 peg4
1
1 0
3
0 0 -1 0
0 5 0 1
0 9 2 4
1
end_operator
begin_operator
move blue_disk2 orange_disk1 peg5
1
1 0
3
0 0 -1 0
0 6 0 1
0 9 2 5
1
end_operator
begin_operator
move blue_disk2 peg1 blue_disk1
1
1 0
3
0 3 0 1
0 4 -1 0
0 9 3 0
1
end_operator
begin_operator
move blue_disk2 peg1 green_disk1
1
1 0
3
0 2 0 1
0 4 -1 0
0 9 3 1
1
end_operator
begin_operator
move blue_disk2 peg1 peg4
1
1 0
3
0 4 -1 0
0 5 0 1
0 9 3 4
1
end_operator
begin_operator
move blue_disk2 peg1 peg5
1
1 0
3
0 4 -1 0
0 6 0 1
0 9 3 5
1
end_operator
begin_operator
move blue_disk2 peg4 blue_disk1
1
1 0
3
0 3 0 1
0 5 -1 0
0 9 4 0
1
end_operator
begin_operator
move blue_disk2 peg4 green_disk1
1
1 0
3
0 2 0 1
0 5 -1 0
0 9 4 1
1
end_operator
begin_operator
move blue_disk2 peg4 peg1
1
1 0
3
0 4 0 1
0 5 -1 0
0 9 4 3
1
end_operator
begin_operator
move blue_disk2 peg4 peg5
1
1 0
3
0 5 -1 0
0 6 0 1
0 9 4 5
1
end_operator
begin_operator
move blue_disk2 peg5 blue_disk1
1
1 0
3
0 3 0 1
0 6 -1 0
0 9 5 0
1
end_operator
begin_operator
move blue_disk2 peg5 green_disk1
1
1 0
3
0 2 0 1
0 6 -1 0
0 9 5 1
1
end_operator
begin_operator
move blue_disk2 peg5 peg1
1
1 0
3
0 4 0 1
0 6 -1 0
0 9 5 3
1
end_operator
begin_operator
move blue_disk2 peg5 peg4
1
1 0
3
0 5 0 1
0 6 -1 0
0 9 5 4
1
end_operator
begin_operator
move green_disk1 blue_disk1 peg1
1
2 0
3
0 3 -1 0
0 4 0 1
0 8 0 2
1
end_operator
begin_operator
move green_disk1 blue_disk1 peg4
1
2 0
3
0 3 -1 0
0 5 0 1
0 8 0 3
1
end_operator
begin_operator
move green_disk1 blue_disk1 peg5
1
2 0
3
0 3 -1 0
0 6 0 1
0 8 0 4
1
end_operator
begin_operator
move green_disk1 blue_disk2 blue_disk1
1
2 0
3
0 3 0 1
0 1 -1 0
0 8 1 0
1
end_operator
begin_operator
move green_disk1 blue_disk2 peg1
1
2 0
3
0 1 -1 0
0 4 0 1
0 8 1 2
1
end_operator
begin_operator
move green_disk1 blue_disk2 peg4
1
2 0
3
0 1 -1 0
0 5 0 1
0 8 1 3
1
end_operator
begin_operator
move green_disk1 blue_disk2 peg5
1
2 0
3
0 1 -1 0
0 6 0 1
0 8 1 4
1
end_operator
begin_operator
move green_disk1 peg1 blue_disk1
1
2 0
3
0 3 0 1
0 4 -1 0
0 8 2 0
1
end_operator
begin_operator
move green_disk1 peg1 peg4
1
2 0
3
0 4 -1 0
0 5 0 1
0 8 2 3
1
end_operator
begin_operator
move green_disk1 peg1 peg5
1
2 0
3
0 4 -1 0
0 6 0 1
0 8 2 4
1
end_operator
begin_operator
move green_disk1 peg4 blue_disk1
1
2 0
3
0 3 0 1
0 5 -1 0
0 8 3 0
1
end_operator
begin_operator
move green_disk1 peg4 peg1
1
2 0
3
0 4 0 1
0 5 -1 0
0 8 3 2
1
end_operator
begin_operator
move green_disk1 peg4 peg5
1
2 0
3
0 5 -1 0
0 6 0 1
0 8 3 4
1
end_operator
begin_operator
move green_disk1 peg5 blue_disk1
1
2 0
3
0 3 0 1
0 6 -1 0
0 8 4 0
1
end_operator
begin_operator
move green_disk1 peg5 peg1
1
2 0
3
0 4 0 1
0 6 -1 0
0 8 4 2
1
end_operator
begin_operator
move green_disk1 peg5 peg4
1
2 0
3
0 5 0 1
0 6 -1 0
0 8 4 3
1
end_operator
begin_operator
move orange_disk1 blue_disk1 blue_disk2
1
0 0
3
0 3 -1 0
0 1 0 1
0 10 0 1
1
end_operator
begin_operator
move orange_disk1 blue_disk1 green_disk1
1
0 0
3
0 3 -1 0
0 2 0 1
0 10 0 2
1
end_operator
begin_operator
move orange_disk1 blue_disk1 peg1
1
0 0
3
0 3 -1 0
0 4 0 1
0 10 0 3
1
end_operator
begin_operator
move orange_disk1 blue_disk1 peg4
1
0 0
3
0 3 -1 0
0 5 0 1
0 10 0 4
1
end_operator
begin_operator
move orange_disk1 blue_disk1 peg5
1
0 0
3
0 3 -1 0
0 6 0 1
0 10 0 5
1
end_operator
begin_operator
move orange_disk1 blue_disk2 blue_disk1
1
0 0
3
0 3 0 1
0 1 -1 0
0 10 1 0
1
end_operator
begin_operator
move orange_disk1 blue_disk2 green_disk1
1
0 0
3
0 1 -1 0
0 2 0 1
0 10 1 2
1
end_operator
begin_operator
move orange_disk1 blue_disk2 peg1
1
0 0
3
0 1 -1 0
0 4 0 1
0 10 1 3
1
end_operator
begin_operator
move orange_disk1 blue_disk2 peg4
1
0 0
3
0 1 -1 0
0 5 0 1
0 10 1 4
1
end_operator
begin_operator
move orange_disk1 blue_disk2 peg5
1
0 0
3
0 1 -1 0
0 6 0 1
0 10 1 5
1
end_operator
begin_operator
move orange_disk1 green_disk1 blue_disk1
1
0 0
3
0 3 0 1
0 2 -1 0
0 10 2 0
1
end_operator
begin_operator
move orange_disk1 green_disk1 blue_disk2
1
0 0
3
0 1 0 1
0 2 -1 0
0 10 2 1
1
end_operator
begin_operator
move orange_disk1 green_disk1 peg1
1
0 0
3
0 2 -1 0
0 4 0 1
0 10 2 3
1
end_operator
begin_operator
move orange_disk1 green_disk1 peg4
1
0 0
3
0 2 -1 0
0 5 0 1
0 10 2 4
1
end_operator
begin_operator
move orange_disk1 green_disk1 peg5
1
0 0
3
0 2 -1 0
0 6 0 1
0 10 2 5
1
end_operator
begin_operator
move orange_disk1 peg1 blue_disk1
1
0 0
3
0 3 0 1
0 4 -1 0
0 10 3 0
1
end_operator
begin_operator
move orange_disk1 peg1 blue_disk2
1
0 0
3
0 1 0 1
0 4 -1 0
0 10 3 1
1
end_operator
begin_operator
move orange_disk1 peg1 green_disk1
1
0 0
3
0 2 0 1
0 4 -1 0
0 10 3 2
1
end_operator
begin_operator
move orange_disk1 peg1 peg4
1
0 0
3
0 4 -1 0
0 5 0 1
0 10 3 4
1
end_operator
begin_operator
move orange_disk1 peg1 peg5
1
0 0
3
0 4 -1 0
0 6 0 1
0 10 3 5
1
end_operator
begin_operator
move orange_disk1 peg4 blue_disk1
1
0 0
3
0 3 0 1
0 5 -1 0
0 10 4 0
1
end_operator
begin_operator
move orange_disk1 peg4 blue_disk2
1
0 0
3
0 1 0 1
0 5 -1 0
0 10 4 1
1
end_operator
begin_operator
move orange_disk1 peg4 green_disk1
1
0 0
3
0 2 0 1
0 5 -1 0
0 10 4 2
1
end_operator
begin_operator
move orange_disk1 peg4 peg1
1
0 0
3
0 4 0 1
0 5 -1 0
0 10 4 3
1
end_operator
begin_operator
move orange_disk1 peg4 peg5
1
0 0
3
0 5 -1 0
0 6 0 1
0 10 4 5
1
end_operator
begin_operator
move orange_disk1 peg5 blue_disk1
1
0 0
3
0 3 0 1
0 6 -1 0
0 10 5 0
1
end_operator
begin_operator
move orange_disk1 peg5 blue_disk2
1
0 0
3
0 1 0 1
0 6 -1 0
0 10 5 1
1
end_operator
begin_operator
move orange_disk1 peg5 green_disk1
1
0 0
3
0 2 0 1
0 6 -1 0
0 10 5 2
1
end_operator
begin_operator
move orange_disk1 peg5 peg1
1
0 0
3
0 4 0 1
0 6 -1 0
0 10 5 3
1
end_operator
begin_operator
move orange_disk1 peg5 peg4
1
0 0
3
0 5 0 1
0 6 -1 0
0 10 5 4
1
end_operator
0
