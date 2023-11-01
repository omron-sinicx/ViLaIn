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
5
Atom holding(pink_block)
Atom on(pink_block, blue_block)
Atom on(pink_block, purple_block)
Atom on(pink_block, red_block)
Atom ontable(pink_block)
end_variable
begin_variable
var1
-1
2
Atom clear(pink_block)
NegatedAtom clear(pink_block)
end_variable
begin_variable
var2
-1
2
Atom clear(blue_block)
NegatedAtom clear(blue_block)
end_variable
begin_variable
var3
-1
2
Atom clear(purple_block)
NegatedAtom clear(purple_block)
end_variable
begin_variable
var4
-1
2
Atom clear(red_block)
NegatedAtom clear(red_block)
end_variable
begin_variable
var5
-1
2
Atom handempty(robot)
Atom handfull(robot)
end_variable
begin_variable
var6
-1
5
Atom holding(blue_block)
Atom on(blue_block, pink_block)
Atom on(blue_block, purple_block)
Atom on(blue_block, red_block)
Atom ontable(blue_block)
end_variable
begin_variable
var7
-1
5
Atom holding(purple_block)
Atom on(purple_block, blue_block)
Atom on(purple_block, pink_block)
Atom on(purple_block, red_block)
Atom ontable(purple_block)
end_variable
begin_variable
var8
-1
5
Atom holding(red_block)
Atom on(red_block, blue_block)
Atom on(red_block, pink_block)
Atom on(red_block, purple_block)
Atom ontable(red_block)
end_variable
5
begin_mutex_group
5
2 0
6 0
0 1
7 1
8 1
end_mutex_group
begin_mutex_group
5
1 0
6 1
0 0
7 2
8 2
end_mutex_group
begin_mutex_group
5
3 0
6 2
0 2
7 0
8 3
end_mutex_group
begin_mutex_group
5
4 0
6 3
0 3
7 3
8 0
end_mutex_group
begin_mutex_group
5
5 0
6 0
0 0
7 0
8 0
end_mutex_group
begin_state
2
0
1
1
0
0
4
1
4
end_state
begin_goal
3
6 2
7 2
8 1
end_goal
32
begin_operator
pick-up blue_block robot
0
3
0 2 0 1
0 5 0 1
0 6 4 0
1
end_operator
begin_operator
pick-up pink_block robot
0
3
0 1 0 1
0 5 0 1
0 0 4 0
1
end_operator
begin_operator
pick-up purple_block robot
0
3
0 3 0 1
0 5 0 1
0 7 4 0
1
end_operator
begin_operator
pick-up red_block robot
0
3
0 4 0 1
0 5 0 1
0 8 4 0
1
end_operator
begin_operator
put-down blue_block robot
0
3
0 2 -1 0
0 5 1 0
0 6 0 4
1
end_operator
begin_operator
put-down pink_block robot
0
3
0 1 -1 0
0 5 1 0
0 0 0 4
1
end_operator
begin_operator
put-down purple_block robot
0
3
0 3 -1 0
0 5 1 0
0 7 0 4
1
end_operator
begin_operator
put-down red_block robot
0
3
0 4 -1 0
0 5 1 0
0 8 0 4
1
end_operator
begin_operator
stack blue_block pink_block robot
0
4
0 2 -1 0
0 1 0 1
0 5 1 0
0 6 0 1
1
end_operator
begin_operator
stack blue_block purple_block robot
0
4
0 2 -1 0
0 3 0 1
0 5 1 0
0 6 0 2
1
end_operator
begin_operator
stack blue_block red_block robot
0
4
0 2 -1 0
0 4 0 1
0 5 1 0
0 6 0 3
1
end_operator
begin_operator
stack pink_block blue_block robot
0
4
0 2 0 1
0 1 -1 0
0 5 1 0
0 0 0 1
1
end_operator
begin_operator
stack pink_block purple_block robot
0
4
0 1 -1 0
0 3 0 1
0 5 1 0
0 0 0 2
1
end_operator
begin_operator
stack pink_block red_block robot
0
4
0 1 -1 0
0 4 0 1
0 5 1 0
0 0 0 3
1
end_operator
begin_operator
stack purple_block blue_block robot
0
4
0 2 0 1
0 3 -1 0
0 5 1 0
0 7 0 1
1
end_operator
begin_operator
stack purple_block pink_block robot
0
4
0 1 0 1
0 3 -1 0
0 5 1 0
0 7 0 2
1
end_operator
begin_operator
stack purple_block red_block robot
0
4
0 3 -1 0
0 4 0 1
0 5 1 0
0 7 0 3
1
end_operator
begin_operator
stack red_block blue_block robot
0
4
0 2 0 1
0 4 -1 0
0 5 1 0
0 8 0 1
1
end_operator
begin_operator
stack red_block pink_block robot
0
4
0 1 0 1
0 4 -1 0
0 5 1 0
0 8 0 2
1
end_operator
begin_operator
stack red_block purple_block robot
0
4
0 3 0 1
0 4 -1 0
0 5 1 0
0 8 0 3
1
end_operator
begin_operator
unstack blue_block pink_block robot
0
4
0 2 0 1
0 1 -1 0
0 5 0 1
0 6 1 0
1
end_operator
begin_operator
unstack blue_block purple_block robot
0
4
0 2 0 1
0 3 -1 0
0 5 0 1
0 6 2 0
1
end_operator
begin_operator
unstack blue_block red_block robot
0
4
0 2 0 1
0 4 -1 0
0 5 0 1
0 6 3 0
1
end_operator
begin_operator
unstack pink_block blue_block robot
0
4
0 2 -1 0
0 1 0 1
0 5 0 1
0 0 1 0
1
end_operator
begin_operator
unstack pink_block purple_block robot
0
4
0 1 0 1
0 3 -1 0
0 5 0 1
0 0 2 0
1
end_operator
begin_operator
unstack pink_block red_block robot
0
4
0 1 0 1
0 4 -1 0
0 5 0 1
0 0 3 0
1
end_operator
begin_operator
unstack purple_block blue_block robot
0
4
0 2 -1 0
0 3 0 1
0 5 0 1
0 7 1 0
1
end_operator
begin_operator
unstack purple_block pink_block robot
0
4
0 1 -1 0
0 3 0 1
0 5 0 1
0 7 2 0
1
end_operator
begin_operator
unstack purple_block red_block robot
0
4
0 3 0 1
0 4 -1 0
0 5 0 1
0 7 3 0
1
end_operator
begin_operator
unstack red_block blue_block robot
0
4
0 2 -1 0
0 4 0 1
0 5 0 1
0 8 1 0
1
end_operator
begin_operator
unstack red_block pink_block robot
0
4
0 1 -1 0
0 4 0 1
0 5 0 1
0 8 2 0
1
end_operator
begin_operator
unstack red_block purple_block robot
0
4
0 3 -1 0
0 4 0 1
0 5 0 1
0 8 3 0
1
end_operator
0
