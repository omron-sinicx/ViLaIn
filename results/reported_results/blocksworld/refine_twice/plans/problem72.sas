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
Atom ontable(red_block)
NegatedAtom ontable(red_block)
end_variable
begin_variable
var1
-1
2
Atom on(red_block, green_block)
NegatedAtom on(red_block, green_block)
end_variable
begin_variable
var2
-1
7
Atom holding(pink_block)
Atom on(pink_block, green_block)
Atom on(pink_block, orange_block)
Atom on(pink_block, purple_block)
Atom on(pink_block, red_block)
Atom on(pink_block, yellow_block)
Atom ontable(pink_block)
end_variable
begin_variable
var3
-1
3
Atom clear(pink_block)
Atom on(red_block, pink_block)
<none of those>
end_variable
begin_variable
var4
-1
3
Atom clear(red_block)
Atom holding(red_block)
<none of those>
end_variable
begin_variable
var5
-1
3
Atom clear(orange_block)
Atom on(red_block, orange_block)
<none of those>
end_variable
begin_variable
var6
-1
3
Atom clear(yellow_block)
Atom on(red_block, yellow_block)
<none of those>
end_variable
begin_variable
var7
-1
2
Atom handempty(robot)
Atom handfull(robot)
end_variable
begin_variable
var8
-1
7
Atom holding(orange_block)
Atom on(orange_block, green_block)
Atom on(orange_block, pink_block)
Atom on(orange_block, purple_block)
Atom on(orange_block, red_block)
Atom on(orange_block, yellow_block)
Atom ontable(orange_block)
end_variable
begin_variable
var9
-1
7
Atom holding(yellow_block)
Atom on(yellow_block, green_block)
Atom on(yellow_block, orange_block)
Atom on(yellow_block, pink_block)
Atom on(yellow_block, purple_block)
Atom on(yellow_block, red_block)
Atom ontable(yellow_block)
end_variable
begin_variable
var10
-1
7
Atom holding(purple_block)
Atom on(purple_block, green_block)
Atom on(purple_block, orange_block)
Atom on(purple_block, pink_block)
Atom on(purple_block, red_block)
Atom on(purple_block, yellow_block)
Atom ontable(purple_block)
end_variable
begin_variable
var11
-1
8
Atom holding(green_block)
Atom on(green_block, green_block)
Atom on(green_block, orange_block)
Atom on(green_block, pink_block)
Atom on(green_block, purple_block)
Atom on(green_block, red_block)
Atom on(green_block, yellow_block)
Atom ontable(green_block)
end_variable
begin_variable
var12
-1
3
Atom clear(purple_block)
Atom on(red_block, purple_block)
<none of those>
end_variable
begin_variable
var13
-1
2
Atom clear(green_block)
NegatedAtom clear(green_block)
end_variable
6
begin_mutex_group
7
5 0
5 1
11 2
8 0
2 2
10 2
9 2
end_mutex_group
begin_mutex_group
7
3 0
3 1
11 3
8 2
2 0
10 3
9 3
end_mutex_group
begin_mutex_group
7
12 0
12 1
11 4
8 3
2 3
10 0
9 4
end_mutex_group
begin_mutex_group
7
4 0
4 1
11 5
8 4
2 4
10 4
9 5
end_mutex_group
begin_mutex_group
7
6 0
6 1
11 6
8 5
2 5
10 5
9 0
end_mutex_group
begin_mutex_group
7
4 1
7 0
11 0
8 0
2 0
10 0
9 0
end_mutex_group
begin_state
0
1
5
2
0
1
2
0
3
1
3
7
2
0
end_state
begin_goal
6
8 4
9 3
10 2
11 6
12 0
13 0
end_goal
74
begin_operator
pick-up green_block robot
0
3
0 13 0 1
0 7 0 1
0 11 7 0
1
end_operator
begin_operator
pick-up orange_block robot
0
3
0 5 0 2
0 7 0 1
0 8 6 0
1
end_operator
begin_operator
pick-up pink_block robot
0
3
0 3 0 2
0 7 0 1
0 2 6 0
1
end_operator
begin_operator
pick-up purple_block robot
0
3
0 12 0 2
0 7 0 1
0 10 6 0
1
end_operator
begin_operator
pick-up red_block robot
0
3
0 4 0 1
0 7 0 1
0 0 0 1
1
end_operator
begin_operator
pick-up yellow_block robot
0
3
0 6 0 2
0 7 0 1
0 9 6 0
1
end_operator
begin_operator
put-down green_block robot
0
3
0 13 -1 0
0 7 1 0
0 11 0 7
1
end_operator
begin_operator
put-down orange_block robot
0
3
0 5 -1 0
0 7 1 0
0 8 0 6
1
end_operator
begin_operator
put-down pink_block robot
0
3
0 3 -1 0
0 7 1 0
0 2 0 6
1
end_operator
begin_operator
put-down purple_block robot
0
3
0 12 -1 0
0 7 1 0
0 10 0 6
1
end_operator
begin_operator
put-down red_block robot
0
3
0 4 1 0
0 7 1 0
0 0 -1 0
1
end_operator
begin_operator
put-down yellow_block robot
0
3
0 6 -1 0
0 7 1 0
0 9 0 6
1
end_operator
begin_operator
stack green_block green_block robot
1
13 0
2
0 7 1 0
0 11 0 1
1
end_operator
begin_operator
stack green_block orange_block robot
0
4
0 13 -1 0
0 5 0 2
0 7 1 0
0 11 0 2
1
end_operator
begin_operator
stack green_block pink_block robot
0
4
0 13 -1 0
0 3 0 2
0 7 1 0
0 11 0 3
1
end_operator
begin_operator
stack green_block purple_block robot
0
4
0 13 -1 0
0 12 0 2
0 7 1 0
0 11 0 4
1
end_operator
begin_operator
stack green_block red_block robot
0
4
0 13 -1 0
0 4 0 2
0 7 1 0
0 11 0 5
1
end_operator
begin_operator
stack green_block yellow_block robot
0
4
0 13 -1 0
0 6 0 2
0 7 1 0
0 11 0 6
1
end_operator
begin_operator
stack orange_block green_block robot
0
4
0 13 0 1
0 5 -1 0
0 7 1 0
0 8 0 1
1
end_operator
begin_operator
stack orange_block pink_block robot
0
4
0 5 -1 0
0 3 0 2
0 7 1 0
0 8 0 2
1
end_operator
begin_operator
stack orange_block purple_block robot
0
4
0 5 -1 0
0 12 0 2
0 7 1 0
0 8 0 3
1
end_operator
begin_operator
stack orange_block red_block robot
0
4
0 5 -1 0
0 4 0 2
0 7 1 0
0 8 0 4
1
end_operator
begin_operator
stack orange_block yellow_block robot
0
4
0 5 -1 0
0 6 0 2
0 7 1 0
0 8 0 5
1
end_operator
begin_operator
stack pink_block green_block robot
0
4
0 13 0 1
0 3 -1 0
0 7 1 0
0 2 0 1
1
end_operator
begin_operator
stack pink_block orange_block robot
0
4
0 5 0 2
0 3 -1 0
0 7 1 0
0 2 0 2
1
end_operator
begin_operator
stack pink_block purple_block robot
0
4
0 3 -1 0
0 12 0 2
0 7 1 0
0 2 0 3
1
end_operator
begin_operator
stack pink_block red_block robot
0
4
0 3 -1 0
0 4 0 2
0 7 1 0
0 2 0 4
1
end_operator
begin_operator
stack pink_block yellow_block robot
0
4
0 3 -1 0
0 6 0 2
0 7 1 0
0 2 0 5
1
end_operator
begin_operator
stack purple_block green_block robot
0
4
0 13 0 1
0 12 -1 0
0 7 1 0
0 10 0 1
1
end_operator
begin_operator
stack purple_block orange_block robot
0
4
0 5 0 2
0 12 -1 0
0 7 1 0
0 10 0 2
1
end_operator
begin_operator
stack purple_block pink_block robot
0
4
0 3 0 2
0 12 -1 0
0 7 1 0
0 10 0 3
1
end_operator
begin_operator
stack purple_block red_block robot
0
4
0 12 -1 0
0 4 0 2
0 7 1 0
0 10 0 4
1
end_operator
begin_operator
stack purple_block yellow_block robot
0
4
0 12 -1 0
0 6 0 2
0 7 1 0
0 10 0 5
1
end_operator
begin_operator
stack red_block green_block robot
0
4
0 13 0 1
0 4 1 0
0 7 1 0
0 1 -1 0
1
end_operator
begin_operator
stack red_block orange_block robot
0
3
0 5 0 1
0 4 1 0
0 7 1 0
1
end_operator
begin_operator
stack red_block pink_block robot
0
3
0 3 0 1
0 4 1 0
0 7 1 0
1
end_operator
begin_operator
stack red_block purple_block robot
0
3
0 12 0 1
0 4 1 0
0 7 1 0
1
end_operator
begin_operator
stack red_block yellow_block robot
0
3
0 4 1 0
0 6 0 1
0 7 1 0
1
end_operator
begin_operator
stack yellow_block green_block robot
0
4
0 13 0 1
0 6 -1 0
0 7 1 0
0 9 0 1
1
end_operator
begin_operator
stack yellow_block orange_block robot
0
4
0 5 0 2
0 6 -1 0
0 7 1 0
0 9 0 2
1
end_operator
begin_operator
stack yellow_block pink_block robot
0
4
0 3 0 2
0 6 -1 0
0 7 1 0
0 9 0 3
1
end_operator
begin_operator
stack yellow_block purple_block robot
0
4
0 12 0 2
0 6 -1 0
0 7 1 0
0 9 0 4
1
end_operator
begin_operator
stack yellow_block red_block robot
0
4
0 4 0 2
0 6 -1 0
0 7 1 0
0 9 0 5
1
end_operator
begin_operator
unstack green_block green_block robot
1
13 0
2
0 7 0 1
0 11 1 0
1
end_operator
begin_operator
unstack green_block orange_block robot
0
4
0 13 0 1
0 5 -1 0
0 7 0 1
0 11 2 0
1
end_operator
begin_operator
unstack green_block pink_block robot
0
4
0 13 0 1
0 3 -1 0
0 7 0 1
0 11 3 0
1
end_operator
begin_operator
unstack green_block purple_block robot
0
4
0 13 0 1
0 12 -1 0
0 7 0 1
0 11 4 0
1
end_operator
begin_operator
unstack green_block red_block robot
0
4
0 13 0 1
0 4 -1 0
0 7 0 1
0 11 5 0
1
end_operator
begin_operator
unstack green_block yellow_block robot
0
4
0 13 0 1
0 6 -1 0
0 7 0 1
0 11 6 0
1
end_operator
begin_operator
unstack orange_block green_block robot
0
4
0 13 -1 0
0 5 0 2
0 7 0 1
0 8 1 0
1
end_operator
begin_operator
unstack orange_block pink_block robot
0
4
0 5 0 2
0 3 -1 0
0 7 0 1
0 8 2 0
1
end_operator
begin_operator
unstack orange_block purple_block robot
0
4
0 5 0 2
0 12 -1 0
0 7 0 1
0 8 3 0
1
end_operator
begin_operator
unstack orange_block red_block robot
0
4
0 5 0 2
0 4 -1 0
0 7 0 1
0 8 4 0
1
end_operator
begin_operator
unstack orange_block yellow_block robot
0
4
0 5 0 2
0 6 -1 0
0 7 0 1
0 8 5 0
1
end_operator
begin_operator
unstack pink_block green_block robot
0
4
0 13 -1 0
0 3 0 2
0 7 0 1
0 2 1 0
1
end_operator
begin_operator
unstack pink_block orange_block robot
0
4
0 5 -1 0
0 3 0 2
0 7 0 1
0 2 2 0
1
end_operator
begin_operator
unstack pink_block purple_block robot
0
4
0 3 0 2
0 12 -1 0
0 7 0 1
0 2 3 0
1
end_operator
begin_operator
unstack pink_block red_block robot
0
4
0 3 0 2
0 4 -1 0
0 7 0 1
0 2 4 0
1
end_operator
begin_operator
unstack pink_block yellow_block robot
0
4
0 3 0 2
0 6 -1 0
0 7 0 1
0 2 5 0
1
end_operator
begin_operator
unstack purple_block green_block robot
0
4
0 13 -1 0
0 12 0 2
0 7 0 1
0 10 1 0
1
end_operator
begin_operator
unstack purple_block orange_block robot
0
4
0 5 -1 0
0 12 0 2
0 7 0 1
0 10 2 0
1
end_operator
begin_operator
unstack purple_block pink_block robot
0
4
0 3 -1 0
0 12 0 2
0 7 0 1
0 10 3 0
1
end_operator
begin_operator
unstack purple_block red_block robot
0
4
0 12 0 2
0 4 -1 0
0 7 0 1
0 10 4 0
1
end_operator
begin_operator
unstack purple_block yellow_block robot
0
4
0 12 0 2
0 6 -1 0
0 7 0 1
0 10 5 0
1
end_operator
begin_operator
unstack red_block green_block robot
0
4
0 13 -1 0
0 4 0 1
0 7 0 1
0 1 0 1
1
end_operator
begin_operator
unstack red_block orange_block robot
0
3
0 5 1 0
0 4 0 1
0 7 0 1
1
end_operator
begin_operator
unstack red_block pink_block robot
0
3
0 3 1 0
0 4 0 1
0 7 0 1
1
end_operator
begin_operator
unstack red_block purple_block robot
0
3
0 12 1 0
0 4 0 1
0 7 0 1
1
end_operator
begin_operator
unstack red_block yellow_block robot
0
3
0 4 0 1
0 6 1 0
0 7 0 1
1
end_operator
begin_operator
unstack yellow_block green_block robot
0
4
0 13 -1 0
0 6 0 2
0 7 0 1
0 9 1 0
1
end_operator
begin_operator
unstack yellow_block orange_block robot
0
4
0 5 -1 0
0 6 0 2
0 7 0 1
0 9 2 0
1
end_operator
begin_operator
unstack yellow_block pink_block robot
0
4
0 3 -1 0
0 6 0 2
0 7 0 1
0 9 3 0
1
end_operator
begin_operator
unstack yellow_block purple_block robot
0
4
0 12 -1 0
0 6 0 2
0 7 0 1
0 9 4 0
1
end_operator
begin_operator
unstack yellow_block red_block robot
0
4
0 4 -1 0
0 6 0 2
0 7 0 1
0 9 5 0
1
end_operator
0
