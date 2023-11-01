begin_version
3
end_version
begin_metric
0
end_metric
9
begin_variable
var0
-1
2
Atom clear(pink_disk1)
NegatedAtom clear(pink_disk1)
end_variable
begin_variable
var1
-1
2
Atom clear(orange_disk2)
NegatedAtom clear(orange_disk2)
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
Atom clear(peg1)
NegatedAtom clear(peg1)
end_variable
begin_variable
var4
-1
2
Atom clear(peg2)
NegatedAtom clear(peg2)
end_variable
begin_variable
var5
-1
2
Atom clear(peg3)
NegatedAtom clear(peg3)
end_variable
begin_variable
var6
-1
4
Atom on(orange_disk1, orange_disk2)
Atom on(orange_disk1, peg1)
Atom on(orange_disk1, peg2)
Atom on(orange_disk1, peg3)
end_variable
begin_variable
var7
-1
5
Atom on(orange_disk2, orange_disk1)
Atom on(orange_disk2, peg1)
Atom on(orange_disk2, peg2)
Atom on(orange_disk2, peg3)
Atom on(orange_disk2, pink_disk1)
end_variable
begin_variable
var8
-1
5
Atom on(pink_disk1, orange_disk1)
Atom on(pink_disk1, orange_disk2)
Atom on(pink_disk1, peg1)
Atom on(pink_disk1, peg2)
Atom on(pink_disk1, peg3)
end_variable
6
begin_mutex_group
3
2 0
7 0
8 0
end_mutex_group
begin_mutex_group
3
1 0
6 0
8 1
end_mutex_group
begin_mutex_group
4
3 0
6 1
7 1
8 2
end_mutex_group
begin_mutex_group
4
4 0
6 2
7 2
8 3
end_mutex_group
begin_mutex_group
4
5 0
6 3
7 3
8 4
end_mutex_group
begin_mutex_group
2
0 0
7 4
end_mutex_group
begin_state
1
1
0
1
0
0
0
4
2
end_state
begin_goal
3
6 0
7 4
8 4
end_goal
45
begin_operator
move orange_disk1 orange_disk2 peg1
1
2 0
3
0 1 -1 0
0 3 0 1
0 6 0 1
1
end_operator
begin_operator
move orange_disk1 orange_disk2 peg2
1
2 0
3
0 1 -1 0
0 4 0 1
0 6 0 2
1
end_operator
begin_operator
move orange_disk1 orange_disk2 peg3
1
2 0
3
0 1 -1 0
0 5 0 1
0 6 0 3
1
end_operator
begin_operator
move orange_disk1 peg1 peg2
1
2 0
3
0 3 -1 0
0 4 0 1
0 6 1 2
1
end_operator
begin_operator
move orange_disk1 peg1 peg3
1
2 0
3
0 3 -1 0
0 5 0 1
0 6 1 3
1
end_operator
begin_operator
move orange_disk1 peg2 peg1
1
2 0
3
0 3 0 1
0 4 -1 0
0 6 2 1
1
end_operator
begin_operator
move orange_disk1 peg2 peg3
1
2 0
3
0 4 -1 0
0 5 0 1
0 6 2 3
1
end_operator
begin_operator
move orange_disk1 peg3 peg1
1
2 0
3
0 3 0 1
0 5 -1 0
0 6 3 1
1
end_operator
begin_operator
move orange_disk1 peg3 peg2
1
2 0
3
0 4 0 1
0 5 -1 0
0 6 3 2
1
end_operator
begin_operator
move orange_disk2 orange_disk1 peg1
1
1 0
3
0 2 -1 0
0 3 0 1
0 7 0 1
1
end_operator
begin_operator
move orange_disk2 orange_disk1 peg2
1
1 0
3
0 2 -1 0
0 4 0 1
0 7 0 2
1
end_operator
begin_operator
move orange_disk2 orange_disk1 peg3
1
1 0
3
0 2 -1 0
0 5 0 1
0 7 0 3
1
end_operator
begin_operator
move orange_disk2 peg1 orange_disk1
1
1 0
3
0 2 0 1
0 3 -1 0
0 7 1 0
1
end_operator
begin_operator
move orange_disk2 peg1 peg2
1
1 0
3
0 3 -1 0
0 4 0 1
0 7 1 2
1
end_operator
begin_operator
move orange_disk2 peg1 peg3
1
1 0
3
0 3 -1 0
0 5 0 1
0 7 1 3
1
end_operator
begin_operator
move orange_disk2 peg2 orange_disk1
1
1 0
3
0 2 0 1
0 4 -1 0
0 7 2 0
1
end_operator
begin_operator
move orange_disk2 peg2 peg1
1
1 0
3
0 3 0 1
0 4 -1 0
0 7 2 1
1
end_operator
begin_operator
move orange_disk2 peg2 peg3
1
1 0
3
0 4 -1 0
0 5 0 1
0 7 2 3
1
end_operator
begin_operator
move orange_disk2 peg3 orange_disk1
1
1 0
3
0 2 0 1
0 5 -1 0
0 7 3 0
1
end_operator
begin_operator
move orange_disk2 peg3 peg1
1
1 0
3
0 3 0 1
0 5 -1 0
0 7 3 1
1
end_operator
begin_operator
move orange_disk2 peg3 peg2
1
1 0
3
0 4 0 1
0 5 -1 0
0 7 3 2
1
end_operator
begin_operator
move orange_disk2 pink_disk1 orange_disk1
1
1 0
3
0 2 0 1
0 0 -1 0
0 7 4 0
1
end_operator
begin_operator
move orange_disk2 pink_disk1 peg1
1
1 0
3
0 3 0 1
0 0 -1 0
0 7 4 1
1
end_operator
begin_operator
move orange_disk2 pink_disk1 peg2
1
1 0
3
0 4 0 1
0 0 -1 0
0 7 4 2
1
end_operator
begin_operator
move orange_disk2 pink_disk1 peg3
1
1 0
3
0 5 0 1
0 0 -1 0
0 7 4 3
1
end_operator
begin_operator
move pink_disk1 orange_disk1 orange_disk2
1
0 0
3
0 2 -1 0
0 1 0 1
0 8 0 1
1
end_operator
begin_operator
move pink_disk1 orange_disk1 peg1
1
0 0
3
0 2 -1 0
0 3 0 1
0 8 0 2
1
end_operator
begin_operator
move pink_disk1 orange_disk1 peg2
1
0 0
3
0 2 -1 0
0 4 0 1
0 8 0 3
1
end_operator
begin_operator
move pink_disk1 orange_disk1 peg3
1
0 0
3
0 2 -1 0
0 5 0 1
0 8 0 4
1
end_operator
begin_operator
move pink_disk1 orange_disk2 orange_disk1
1
0 0
3
0 2 0 1
0 1 -1 0
0 8 1 0
1
end_operator
begin_operator
move pink_disk1 orange_disk2 peg1
1
0 0
3
0 1 -1 0
0 3 0 1
0 8 1 2
1
end_operator
begin_operator
move pink_disk1 orange_disk2 peg2
1
0 0
3
0 1 -1 0
0 4 0 1
0 8 1 3
1
end_operator
begin_operator
move pink_disk1 orange_disk2 peg3
1
0 0
3
0 1 -1 0
0 5 0 1
0 8 1 4
1
end_operator
begin_operator
move pink_disk1 peg1 orange_disk1
1
0 0
3
0 2 0 1
0 3 -1 0
0 8 2 0
1
end_operator
begin_operator
move pink_disk1 peg1 orange_disk2
1
0 0
3
0 1 0 1
0 3 -1 0
0 8 2 1
1
end_operator
begin_operator
move pink_disk1 peg1 peg2
1
0 0
3
0 3 -1 0
0 4 0 1
0 8 2 3
1
end_operator
begin_operator
move pink_disk1 peg1 peg3
1
0 0
3
0 3 -1 0
0 5 0 1
0 8 2 4
1
end_operator
begin_operator
move pink_disk1 peg2 orange_disk1
1
0 0
3
0 2 0 1
0 4 -1 0
0 8 3 0
1
end_operator
begin_operator
move pink_disk1 peg2 orange_disk2
1
0 0
3
0 1 0 1
0 4 -1 0
0 8 3 1
1
end_operator
begin_operator
move pink_disk1 peg2 peg1
1
0 0
3
0 3 0 1
0 4 -1 0
0 8 3 2
1
end_operator
begin_operator
move pink_disk1 peg2 peg3
1
0 0
3
0 4 -1 0
0 5 0 1
0 8 3 4
1
end_operator
begin_operator
move pink_disk1 peg3 orange_disk1
1
0 0
3
0 2 0 1
0 5 -1 0
0 8 4 0
1
end_operator
begin_operator
move pink_disk1 peg3 orange_disk2
1
0 0
3
0 1 0 1
0 5 -1 0
0 8 4 1
1
end_operator
begin_operator
move pink_disk1 peg3 peg1
1
0 0
3
0 3 0 1
0 5 -1 0
0 8 4 2
1
end_operator
begin_operator
move pink_disk1 peg3 peg2
1
0 0
3
0 4 0 1
0 5 -1 0
0 8 4 3
1
end_operator
0
