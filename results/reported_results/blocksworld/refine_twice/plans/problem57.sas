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
6
Atom holding(orange_block)
Atom on(orange_block, pink_block)
Atom on(orange_block, purple_block)
Atom on(orange_block, red_block)
Atom on(orange_block, yellow_block)
Atom ontable(orange_block)
end_variable
begin_variable
var1
-1
6
Atom holding(purple_block)
Atom on(purple_block, orange_block)
Atom on(purple_block, pink_block)
Atom on(purple_block, red_block)
Atom on(purple_block, yellow_block)
Atom ontable(purple_block)
end_variable
begin_variable
var2
-1
6
Atom holding(red_block)
Atom on(red_block, orange_block)
Atom on(red_block, pink_block)
Atom on(red_block, purple_block)
Atom on(red_block, yellow_block)
Atom ontable(red_block)
end_variable
begin_variable
var3
-1
2
Atom clear(orange_block)
NegatedAtom clear(orange_block)
end_variable
begin_variable
var4
-1
2
Atom clear(purple_block)
NegatedAtom clear(purple_block)
end_variable
begin_variable
var5
-1
2
Atom clear(red_block)
NegatedAtom clear(red_block)
end_variable
begin_variable
var6
-1
2
Atom handempty(robot)
Atom handfull(robot)
end_variable
begin_variable
var7
-1
6
Atom holding(pink_block)
Atom on(pink_block, orange_block)
Atom on(pink_block, purple_block)
Atom on(pink_block, red_block)
Atom on(pink_block, yellow_block)
Atom ontable(pink_block)
end_variable
begin_variable
var8
-1
6
Atom holding(yellow_block)
Atom on(yellow_block, orange_block)
Atom on(yellow_block, pink_block)
Atom on(yellow_block, purple_block)
Atom on(yellow_block, red_block)
Atom ontable(yellow_block)
end_variable
begin_variable
var9
-1
2
Atom clear(pink_block)
NegatedAtom clear(pink_block)
end_variable
begin_variable
var10
-1
2
Atom clear(yellow_block)
NegatedAtom clear(yellow_block)
end_variable
6
begin_mutex_group
6
3 0
0 0
7 1
1 1
2 1
8 1
end_mutex_group
begin_mutex_group
6
9 0
0 1
7 0
1 2
2 2
8 2
end_mutex_group
begin_mutex_group
6
4 0
0 2
7 2
1 0
2 3
8 3
end_mutex_group
begin_mutex_group
6
5 0
0 3
7 3
1 3
2 0
8 4
end_mutex_group
begin_mutex_group
6
10 0
0 4
7 4
1 4
2 4
8 0
end_mutex_group
begin_mutex_group
6
6 0
0 0
7 0
1 0
2 0
8 0
end_mutex_group
begin_state
5
5
5
0
0
0
0
5
5
0
0
end_state
begin_goal
4
7 2
8 1
9 0
10 0
end_goal
50
begin_operator
pick-up orange_block robot
0
3
0 3 0 1
0 6 0 1
0 0 5 0
1
end_operator
begin_operator
pick-up pink_block robot
0
3
0 9 0 1
0 6 0 1
0 7 5 0
1
end_operator
begin_operator
pick-up purple_block robot
0
3
0 4 0 1
0 6 0 1
0 1 5 0
1
end_operator
begin_operator
pick-up red_block robot
0
3
0 5 0 1
0 6 0 1
0 2 5 0
1
end_operator
begin_operator
pick-up yellow_block robot
0
3
0 10 0 1
0 6 0 1
0 8 5 0
1
end_operator
begin_operator
put-down orange_block robot
0
3
0 3 -1 0
0 6 1 0
0 0 0 5
1
end_operator
begin_operator
put-down pink_block robot
0
3
0 9 -1 0
0 6 1 0
0 7 0 5
1
end_operator
begin_operator
put-down purple_block robot
0
3
0 4 -1 0
0 6 1 0
0 1 0 5
1
end_operator
begin_operator
put-down red_block robot
0
3
0 5 -1 0
0 6 1 0
0 2 0 5
1
end_operator
begin_operator
put-down yellow_block robot
0
3
0 10 -1 0
0 6 1 0
0 8 0 5
1
end_operator
begin_operator
stack orange_block pink_block robot
0
4
0 3 -1 0
0 9 0 1
0 6 1 0
0 0 0 1
1
end_operator
begin_operator
stack orange_block purple_block robot
0
4
0 3 -1 0
0 4 0 1
0 6 1 0
0 0 0 2
1
end_operator
begin_operator
stack orange_block red_block robot
0
4
0 3 -1 0
0 5 0 1
0 6 1 0
0 0 0 3
1
end_operator
begin_operator
stack orange_block yellow_block robot
0
4
0 3 -1 0
0 10 0 1
0 6 1 0
0 0 0 4
1
end_operator
begin_operator
stack pink_block orange_block robot
0
4
0 3 0 1
0 9 -1 0
0 6 1 0
0 7 0 1
1
end_operator
begin_operator
stack pink_block purple_block robot
0
4
0 9 -1 0
0 4 0 1
0 6 1 0
0 7 0 2
1
end_operator
begin_operator
stack pink_block red_block robot
0
4
0 9 -1 0
0 5 0 1
0 6 1 0
0 7 0 3
1
end_operator
begin_operator
stack pink_block yellow_block robot
0
4
0 9 -1 0
0 10 0 1
0 6 1 0
0 7 0 4
1
end_operator
begin_operator
stack purple_block orange_block robot
0
4
0 3 0 1
0 4 -1 0
0 6 1 0
0 1 0 1
1
end_operator
begin_operator
stack purple_block pink_block robot
0
4
0 9 0 1
0 4 -1 0
0 6 1 0
0 1 0 2
1
end_operator
begin_operator
stack purple_block red_block robot
0
4
0 4 -1 0
0 5 0 1
0 6 1 0
0 1 0 3
1
end_operator
begin_operator
stack purple_block yellow_block robot
0
4
0 4 -1 0
0 10 0 1
0 6 1 0
0 1 0 4
1
end_operator
begin_operator
stack red_block orange_block robot
0
4
0 3 0 1
0 5 -1 0
0 6 1 0
0 2 0 1
1
end_operator
begin_operator
stack red_block pink_block robot
0
4
0 9 0 1
0 5 -1 0
0 6 1 0
0 2 0 2
1
end_operator
begin_operator
stack red_block purple_block robot
0
4
0 4 0 1
0 5 -1 0
0 6 1 0
0 2 0 3
1
end_operator
begin_operator
stack red_block yellow_block robot
0
4
0 5 -1 0
0 10 0 1
0 6 1 0
0 2 0 4
1
end_operator
begin_operator
stack yellow_block orange_block robot
0
4
0 3 0 1
0 10 -1 0
0 6 1 0
0 8 0 1
1
end_operator
begin_operator
stack yellow_block pink_block robot
0
4
0 9 0 1
0 10 -1 0
0 6 1 0
0 8 0 2
1
end_operator
begin_operator
stack yellow_block purple_block robot
0
4
0 4 0 1
0 10 -1 0
0 6 1 0
0 8 0 3
1
end_operator
begin_operator
stack yellow_block red_block robot
0
4
0 5 0 1
0 10 -1 0
0 6 1 0
0 8 0 4
1
end_operator
begin_operator
unstack orange_block pink_block robot
0
4
0 3 0 1
0 9 -1 0
0 6 0 1
0 0 1 0
1
end_operator
begin_operator
unstack orange_block purple_block robot
0
4
0 3 0 1
0 4 -1 0
0 6 0 1
0 0 2 0
1
end_operator
begin_operator
unstack orange_block red_block robot
0
4
0 3 0 1
0 5 -1 0
0 6 0 1
0 0 3 0
1
end_operator
begin_operator
unstack orange_block yellow_block robot
0
4
0 3 0 1
0 10 -1 0
0 6 0 1
0 0 4 0
1
end_operator
begin_operator
unstack pink_block orange_block robot
0
4
0 3 -1 0
0 9 0 1
0 6 0 1
0 7 1 0
1
end_operator
begin_operator
unstack pink_block purple_block robot
0
4
0 9 0 1
0 4 -1 0
0 6 0 1
0 7 2 0
1
end_operator
begin_operator
unstack pink_block red_block robot
0
4
0 9 0 1
0 5 -1 0
0 6 0 1
0 7 3 0
1
end_operator
begin_operator
unstack pink_block yellow_block robot
0
4
0 9 0 1
0 10 -1 0
0 6 0 1
0 7 4 0
1
end_operator
begin_operator
unstack purple_block orange_block robot
0
4
0 3 -1 0
0 4 0 1
0 6 0 1
0 1 1 0
1
end_operator
begin_operator
unstack purple_block pink_block robot
0
4
0 9 -1 0
0 4 0 1
0 6 0 1
0 1 2 0
1
end_operator
begin_operator
unstack purple_block red_block robot
0
4
0 4 0 1
0 5 -1 0
0 6 0 1
0 1 3 0
1
end_operator
begin_operator
unstack purple_block yellow_block robot
0
4
0 4 0 1
0 10 -1 0
0 6 0 1
0 1 4 0
1
end_operator
begin_operator
unstack red_block orange_block robot
0
4
0 3 -1 0
0 5 0 1
0 6 0 1
0 2 1 0
1
end_operator
begin_operator
unstack red_block pink_block robot
0
4
0 9 -1 0
0 5 0 1
0 6 0 1
0 2 2 0
1
end_operator
begin_operator
unstack red_block purple_block robot
0
4
0 4 -1 0
0 5 0 1
0 6 0 1
0 2 3 0
1
end_operator
begin_operator
unstack red_block yellow_block robot
0
4
0 5 0 1
0 10 -1 0
0 6 0 1
0 2 4 0
1
end_operator
begin_operator
unstack yellow_block orange_block robot
0
4
0 3 -1 0
0 10 0 1
0 6 0 1
0 8 1 0
1
end_operator
begin_operator
unstack yellow_block pink_block robot
0
4
0 9 -1 0
0 10 0 1
0 6 0 1
0 8 2 0
1
end_operator
begin_operator
unstack yellow_block purple_block robot
0
4
0 4 -1 0
0 10 0 1
0 6 0 1
0 8 3 0
1
end_operator
begin_operator
unstack yellow_block red_block robot
0
4
0 5 -1 0
0 10 0 1
0 6 0 1
0 8 4 0
1
end_operator
0
