begin_version
3
end_version
begin_metric
0
end_metric
4
begin_variable
var0
-1
2
Atom clear(peg1)
NegatedAtom clear(peg1)
end_variable
begin_variable
var1
-1
2
Atom clear(peg2)
NegatedAtom clear(peg2)
end_variable
begin_variable
var2
-1
2
Atom clear(peg3)
NegatedAtom clear(peg3)
end_variable
begin_variable
var3
-1
3
Atom on(blue_disk3, peg1)
Atom on(blue_disk3, peg2)
Atom on(blue_disk3, peg3)
end_variable
3
begin_mutex_group
2
0 0
3 0
end_mutex_group
begin_mutex_group
2
1 0
3 1
end_mutex_group
begin_mutex_group
2
2 0
3 2
end_mutex_group
begin_state
1
0
0
0
end_state
begin_goal
1
3 2
end_goal
6
begin_operator
move blue_disk3 peg1 peg2
0
3
0 0 -1 0
0 1 0 1
0 3 0 1
1
end_operator
begin_operator
move blue_disk3 peg1 peg3
0
3
0 0 -1 0
0 2 0 1
0 3 0 2
1
end_operator
begin_operator
move blue_disk3 peg2 peg1
0
3
0 0 0 1
0 1 -1 0
0 3 1 0
1
end_operator
begin_operator
move blue_disk3 peg2 peg3
0
3
0 1 -1 0
0 2 0 1
0 3 1 2
1
end_operator
begin_operator
move blue_disk3 peg3 peg1
0
3
0 0 0 1
0 2 -1 0
0 3 2 0
1
end_operator
begin_operator
move blue_disk3 peg3 peg2
0
3
0 1 0 1
0 2 -1 0
0 3 2 1
1
end_operator
0
