begin_version
3
end_version
begin_metric
0
end_metric
10
begin_variable
var0
-1
2
Atom ontable(blue_block)
NegatedAtom ontable(blue_block)
end_variable
begin_variable
var1
-1
3
Atom clear(red_block)
Atom on(blue_block, red_block)
<none of those>
end_variable
begin_variable
var2
-1
3
Atom clear(blue_block)
Atom holding(blue_block)
<none of those>
end_variable
begin_variable
var3
-1
3
Atom clear(orange_block)
Atom on(blue_block, orange_block)
<none of those>
end_variable
begin_variable
var4
-1
3
Atom clear(yellow_block)
Atom on(blue_block, yellow_block)
<none of those>
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
6
Atom holding(orange_block)
Atom on(orange_block, blue_block)
Atom on(orange_block, purple_block)
Atom on(orange_block, red_block)
Atom on(orange_block, yellow_block)
Atom ontable(orange_block)
end_variable
begin_variable
var7
-1
6
Atom holding(yellow_block)
Atom on(yellow_block, blue_block)
Atom on(yellow_block, orange_block)
Atom on(yellow_block, purple_block)
Atom on(yellow_block, red_block)
Atom ontable(yellow_block)
end_variable
begin_variable
var8
-1
6
Atom holding(purple_block)
Atom on(purple_block, blue_block)
Atom on(purple_block, orange_block)
Atom on(purple_block, red_block)
Atom on(purple_block, yellow_block)
Atom ontable(purple_block)
end_variable
begin_variable
var9
-1
3
Atom clear(purple_block)
Atom on(blue_block, purple_block)
<none of those>
end_variable
6
begin_mutex_group
5
2 0
2 1
6 1
8 1
7 1
end_mutex_group
begin_mutex_group
5
3 0
3 1
6 0
8 2
7 2
end_mutex_group
begin_mutex_group
5
9 0
9 1
6 2
8 0
7 3
end_mutex_group
begin_mutex_group
5
1 0
1 1
6 3
8 3
7 4
end_mutex_group
begin_mutex_group
5
4 0
4 1
6 4
8 4
7 0
end_mutex_group
begin_mutex_group
5
2 1
5 0
6 0
8 0
7 0
end_mutex_group
begin_state
0
0
2
1
2
0
5
1
4
0
end_state
begin_goal
4
6 4
7 1
8 3
9 1
end_goal
40
begin_operator
pick-up blue_block robot
0
3
0 2 0 1
0 5 0 1
0 0 0 1
1
end_operator
begin_operator
pick-up orange_block robot
0
3
0 3 0 2
0 5 0 1
0 6 5 0
1
end_operator
begin_operator
pick-up purple_block robot
0
3
0 9 0 2
0 5 0 1
0 8 5 0
1
end_operator
begin_operator
pick-up yellow_block robot
0
3
0 4 0 2
0 5 0 1
0 7 5 0
1
end_operator
begin_operator
put-down blue_block robot
0
3
0 2 1 0
0 5 1 0
0 0 -1 0
1
end_operator
begin_operator
put-down orange_block robot
0
3
0 3 -1 0
0 5 1 0
0 6 0 5
1
end_operator
begin_operator
put-down purple_block robot
0
3
0 9 -1 0
0 5 1 0
0 8 0 5
1
end_operator
begin_operator
put-down yellow_block robot
0
3
0 4 -1 0
0 5 1 0
0 7 0 5
1
end_operator
begin_operator
stack blue_block orange_block robot
0
3
0 2 1 0
0 3 0 1
0 5 1 0
1
end_operator
begin_operator
stack blue_block purple_block robot
0
3
0 2 1 0
0 9 0 1
0 5 1 0
1
end_operator
begin_operator
stack blue_block red_block robot
0
3
0 2 1 0
0 1 0 1
0 5 1 0
1
end_operator
begin_operator
stack blue_block yellow_block robot
0
3
0 2 1 0
0 4 0 1
0 5 1 0
1
end_operator
begin_operator
stack orange_block blue_block robot
0
4
0 2 0 2
0 3 -1 0
0 5 1 0
0 6 0 1
1
end_operator
begin_operator
stack orange_block purple_block robot
0
4
0 3 -1 0
0 9 0 2
0 5 1 0
0 6 0 2
1
end_operator
begin_operator
stack orange_block red_block robot
0
4
0 3 -1 0
0 1 0 2
0 5 1 0
0 6 0 3
1
end_operator
begin_operator
stack orange_block yellow_block robot
0
4
0 3 -1 0
0 4 0 2
0 5 1 0
0 6 0 4
1
end_operator
begin_operator
stack purple_block blue_block robot
0
4
0 2 0 2
0 9 -1 0
0 5 1 0
0 8 0 1
1
end_operator
begin_operator
stack purple_block orange_block robot
0
4
0 3 0 2
0 9 -1 0
0 5 1 0
0 8 0 2
1
end_operator
begin_operator
stack purple_block red_block robot
0
4
0 9 -1 0
0 1 0 2
0 5 1 0
0 8 0 3
1
end_operator
begin_operator
stack purple_block yellow_block robot
0
4
0 9 -1 0
0 4 0 2
0 5 1 0
0 8 0 4
1
end_operator
begin_operator
stack yellow_block blue_block robot
0
4
0 2 0 2
0 4 -1 0
0 5 1 0
0 7 0 1
1
end_operator
begin_operator
stack yellow_block orange_block robot
0
4
0 3 0 2
0 4 -1 0
0 5 1 0
0 7 0 2
1
end_operator
begin_operator
stack yellow_block purple_block robot
0
4
0 9 0 2
0 4 -1 0
0 5 1 0
0 7 0 3
1
end_operator
begin_operator
stack yellow_block red_block robot
0
4
0 1 0 2
0 4 -1 0
0 5 1 0
0 7 0 4
1
end_operator
begin_operator
unstack blue_block orange_block robot
0
3
0 2 0 1
0 3 1 0
0 5 0 1
1
end_operator
begin_operator
unstack blue_block purple_block robot
0
3
0 2 0 1
0 9 1 0
0 5 0 1
1
end_operator
begin_operator
unstack blue_block red_block robot
0
3
0 2 0 1
0 1 1 0
0 5 0 1
1
end_operator
begin_operator
unstack blue_block yellow_block robot
0
3
0 2 0 1
0 4 1 0
0 5 0 1
1
end_operator
begin_operator
unstack orange_block blue_block robot
0
4
0 2 -1 0
0 3 0 2
0 5 0 1
0 6 1 0
1
end_operator
begin_operator
unstack orange_block purple_block robot
0
4
0 3 0 2
0 9 -1 0
0 5 0 1
0 6 2 0
1
end_operator
begin_operator
unstack orange_block red_block robot
0
4
0 3 0 2
0 1 -1 0
0 5 0 1
0 6 3 0
1
end_operator
begin_operator
unstack orange_block yellow_block robot
0
4
0 3 0 2
0 4 -1 0
0 5 0 1
0 6 4 0
1
end_operator
begin_operator
unstack purple_block blue_block robot
0
4
0 2 -1 0
0 9 0 2
0 5 0 1
0 8 1 0
1
end_operator
begin_operator
unstack purple_block orange_block robot
0
4
0 3 -1 0
0 9 0 2
0 5 0 1
0 8 2 0
1
end_operator
begin_operator
unstack purple_block red_block robot
0
4
0 9 0 2
0 1 -1 0
0 5 0 1
0 8 3 0
1
end_operator
begin_operator
unstack purple_block yellow_block robot
0
4
0 9 0 2
0 4 -1 0
0 5 0 1
0 8 4 0
1
end_operator
begin_operator
unstack yellow_block blue_block robot
0
4
0 2 -1 0
0 4 0 2
0 5 0 1
0 7 1 0
1
end_operator
begin_operator
unstack yellow_block orange_block robot
0
4
0 3 -1 0
0 4 0 2
0 5 0 1
0 7 2 0
1
end_operator
begin_operator
unstack yellow_block purple_block robot
0
4
0 9 -1 0
0 4 0 2
0 5 0 1
0 7 3 0
1
end_operator
begin_operator
unstack yellow_block red_block robot
0
4
0 1 -1 0
0 4 0 2
0 5 0 1
0 7 4 0
1
end_operator
0
