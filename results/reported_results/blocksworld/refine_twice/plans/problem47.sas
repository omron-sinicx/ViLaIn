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
Atom holding(green_block)
Atom on(green_block, blue_block)
Atom on(green_block, orange_block)
Atom on(green_block, red_block)
Atom on(green_block, yellow_block)
Atom ontable(green_block)
end_variable
begin_variable
var1
-1
2
Atom clear(green_block)
NegatedAtom clear(green_block)
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
Atom clear(orange_block)
NegatedAtom clear(orange_block)
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
Atom clear(yellow_block)
NegatedAtom clear(yellow_block)
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
Atom holding(blue_block)
Atom on(blue_block, green_block)
Atom on(blue_block, orange_block)
Atom on(blue_block, red_block)
Atom on(blue_block, yellow_block)
Atom ontable(blue_block)
end_variable
begin_variable
var8
-1
6
Atom holding(orange_block)
Atom on(orange_block, blue_block)
Atom on(orange_block, green_block)
Atom on(orange_block, red_block)
Atom on(orange_block, yellow_block)
Atom ontable(orange_block)
end_variable
begin_variable
var9
-1
6
Atom holding(red_block)
Atom on(red_block, blue_block)
Atom on(red_block, green_block)
Atom on(red_block, orange_block)
Atom on(red_block, yellow_block)
Atom ontable(red_block)
end_variable
begin_variable
var10
-1
6
Atom holding(yellow_block)
Atom on(yellow_block, blue_block)
Atom on(yellow_block, green_block)
Atom on(yellow_block, orange_block)
Atom on(yellow_block, red_block)
Atom ontable(yellow_block)
end_variable
6
begin_mutex_group
6
2 0
7 0
0 1
8 1
9 1
10 1
end_mutex_group
begin_mutex_group
6
1 0
7 1
0 0
8 2
9 2
10 2
end_mutex_group
begin_mutex_group
6
3 0
7 2
0 2
8 0
9 3
10 3
end_mutex_group
begin_mutex_group
6
4 0
7 3
0 3
8 3
9 0
10 4
end_mutex_group
begin_mutex_group
6
5 0
7 4
0 4
8 4
9 4
10 0
end_mutex_group
begin_mutex_group
6
6 0
7 0
0 0
8 0
9 0
10 0
end_mutex_group
begin_state
5
0
0
0
0
0
0
5
5
5
5
end_state
begin_goal
4
7 2
8 2
9 1
10 4
end_goal
50
begin_operator
pick-up blue_block robot
0
3
0 2 0 1
0 6 0 1
0 7 5 0
1
end_operator
begin_operator
pick-up green_block robot
0
3
0 1 0 1
0 6 0 1
0 0 5 0
1
end_operator
begin_operator
pick-up orange_block robot
0
3
0 3 0 1
0 6 0 1
0 8 5 0
1
end_operator
begin_operator
pick-up red_block robot
0
3
0 4 0 1
0 6 0 1
0 9 5 0
1
end_operator
begin_operator
pick-up yellow_block robot
0
3
0 5 0 1
0 6 0 1
0 10 5 0
1
end_operator
begin_operator
put-down blue_block robot
0
3
0 2 -1 0
0 6 1 0
0 7 0 5
1
end_operator
begin_operator
put-down green_block robot
0
3
0 1 -1 0
0 6 1 0
0 0 0 5
1
end_operator
begin_operator
put-down orange_block robot
0
3
0 3 -1 0
0 6 1 0
0 8 0 5
1
end_operator
begin_operator
put-down red_block robot
0
3
0 4 -1 0
0 6 1 0
0 9 0 5
1
end_operator
begin_operator
put-down yellow_block robot
0
3
0 5 -1 0
0 6 1 0
0 10 0 5
1
end_operator
begin_operator
stack blue_block green_block robot
0
4
0 2 -1 0
0 1 0 1
0 6 1 0
0 7 0 1
1
end_operator
begin_operator
stack blue_block orange_block robot
0
4
0 2 -1 0
0 3 0 1
0 6 1 0
0 7 0 2
1
end_operator
begin_operator
stack blue_block red_block robot
0
4
0 2 -1 0
0 4 0 1
0 6 1 0
0 7 0 3
1
end_operator
begin_operator
stack blue_block yellow_block robot
0
4
0 2 -1 0
0 5 0 1
0 6 1 0
0 7 0 4
1
end_operator
begin_operator
stack green_block blue_block robot
0
4
0 2 0 1
0 1 -1 0
0 6 1 0
0 0 0 1
1
end_operator
begin_operator
stack green_block orange_block robot
0
4
0 1 -1 0
0 3 0 1
0 6 1 0
0 0 0 2
1
end_operator
begin_operator
stack green_block red_block robot
0
4
0 1 -1 0
0 4 0 1
0 6 1 0
0 0 0 3
1
end_operator
begin_operator
stack green_block yellow_block robot
0
4
0 1 -1 0
0 5 0 1
0 6 1 0
0 0 0 4
1
end_operator
begin_operator
stack orange_block blue_block robot
0
4
0 2 0 1
0 3 -1 0
0 6 1 0
0 8 0 1
1
end_operator
begin_operator
stack orange_block green_block robot
0
4
0 1 0 1
0 3 -1 0
0 6 1 0
0 8 0 2
1
end_operator
begin_operator
stack orange_block red_block robot
0
4
0 3 -1 0
0 4 0 1
0 6 1 0
0 8 0 3
1
end_operator
begin_operator
stack orange_block yellow_block robot
0
4
0 3 -1 0
0 5 0 1
0 6 1 0
0 8 0 4
1
end_operator
begin_operator
stack red_block blue_block robot
0
4
0 2 0 1
0 4 -1 0
0 6 1 0
0 9 0 1
1
end_operator
begin_operator
stack red_block green_block robot
0
4
0 1 0 1
0 4 -1 0
0 6 1 0
0 9 0 2
1
end_operator
begin_operator
stack red_block orange_block robot
0
4
0 3 0 1
0 4 -1 0
0 6 1 0
0 9 0 3
1
end_operator
begin_operator
stack red_block yellow_block robot
0
4
0 4 -1 0
0 5 0 1
0 6 1 0
0 9 0 4
1
end_operator
begin_operator
stack yellow_block blue_block robot
0
4
0 2 0 1
0 5 -1 0
0 6 1 0
0 10 0 1
1
end_operator
begin_operator
stack yellow_block green_block robot
0
4
0 1 0 1
0 5 -1 0
0 6 1 0
0 10 0 2
1
end_operator
begin_operator
stack yellow_block orange_block robot
0
4
0 3 0 1
0 5 -1 0
0 6 1 0
0 10 0 3
1
end_operator
begin_operator
stack yellow_block red_block robot
0
4
0 4 0 1
0 5 -1 0
0 6 1 0
0 10 0 4
1
end_operator
begin_operator
unstack blue_block green_block robot
0
4
0 2 0 1
0 1 -1 0
0 6 0 1
0 7 1 0
1
end_operator
begin_operator
unstack blue_block orange_block robot
0
4
0 2 0 1
0 3 -1 0
0 6 0 1
0 7 2 0
1
end_operator
begin_operator
unstack blue_block red_block robot
0
4
0 2 0 1
0 4 -1 0
0 6 0 1
0 7 3 0
1
end_operator
begin_operator
unstack blue_block yellow_block robot
0
4
0 2 0 1
0 5 -1 0
0 6 0 1
0 7 4 0
1
end_operator
begin_operator
unstack green_block blue_block robot
0
4
0 2 -1 0
0 1 0 1
0 6 0 1
0 0 1 0
1
end_operator
begin_operator
unstack green_block orange_block robot
0
4
0 1 0 1
0 3 -1 0
0 6 0 1
0 0 2 0
1
end_operator
begin_operator
unstack green_block red_block robot
0
4
0 1 0 1
0 4 -1 0
0 6 0 1
0 0 3 0
1
end_operator
begin_operator
unstack green_block yellow_block robot
0
4
0 1 0 1
0 5 -1 0
0 6 0 1
0 0 4 0
1
end_operator
begin_operator
unstack orange_block blue_block robot
0
4
0 2 -1 0
0 3 0 1
0 6 0 1
0 8 1 0
1
end_operator
begin_operator
unstack orange_block green_block robot
0
4
0 1 -1 0
0 3 0 1
0 6 0 1
0 8 2 0
1
end_operator
begin_operator
unstack orange_block red_block robot
0
4
0 3 0 1
0 4 -1 0
0 6 0 1
0 8 3 0
1
end_operator
begin_operator
unstack orange_block yellow_block robot
0
4
0 3 0 1
0 5 -1 0
0 6 0 1
0 8 4 0
1
end_operator
begin_operator
unstack red_block blue_block robot
0
4
0 2 -1 0
0 4 0 1
0 6 0 1
0 9 1 0
1
end_operator
begin_operator
unstack red_block green_block robot
0
4
0 1 -1 0
0 4 0 1
0 6 0 1
0 9 2 0
1
end_operator
begin_operator
unstack red_block orange_block robot
0
4
0 3 -1 0
0 4 0 1
0 6 0 1
0 9 3 0
1
end_operator
begin_operator
unstack red_block yellow_block robot
0
4
0 4 0 1
0 5 -1 0
0 6 0 1
0 9 4 0
1
end_operator
begin_operator
unstack yellow_block blue_block robot
0
4
0 2 -1 0
0 5 0 1
0 6 0 1
0 10 1 0
1
end_operator
begin_operator
unstack yellow_block green_block robot
0
4
0 1 -1 0
0 5 0 1
0 6 0 1
0 10 2 0
1
end_operator
begin_operator
unstack yellow_block orange_block robot
0
4
0 3 -1 0
0 5 0 1
0 6 0 1
0 10 3 0
1
end_operator
begin_operator
unstack yellow_block red_block robot
0
4
0 4 -1 0
0 5 0 1
0 6 0 1
0 10 4 0
1
end_operator
0
