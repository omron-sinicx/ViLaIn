begin_version
3
end_version
begin_metric
0
end_metric
15
begin_variable
var0
-1
8
Atom holding(blue_block)
Atom on(blue_block, green_block)
Atom on(blue_block, orange_block)
Atom on(blue_block, pink_block)
Atom on(blue_block, purple_block)
Atom on(blue_block, red_block)
Atom on(blue_block, yellow_block)
Atom ontable(blue_block)
end_variable
begin_variable
var1
-1
8
Atom holding(orange_block)
Atom on(orange_block, blue_block)
Atom on(orange_block, green_block)
Atom on(orange_block, pink_block)
Atom on(orange_block, purple_block)
Atom on(orange_block, red_block)
Atom on(orange_block, yellow_block)
Atom ontable(orange_block)
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
Atom clear(green_block)
NegatedAtom clear(green_block)
end_variable
begin_variable
var5
-1
2
Atom clear(pink_block)
NegatedAtom clear(pink_block)
end_variable
begin_variable
var6
-1
2
Atom clear(purple_block)
NegatedAtom clear(purple_block)
end_variable
begin_variable
var7
-1
2
Atom clear(red_block)
NegatedAtom clear(red_block)
end_variable
begin_variable
var8
-1
2
Atom clear(yellow_block)
NegatedAtom clear(yellow_block)
end_variable
begin_variable
var9
-1
2
Atom handempty(robot)
Atom handfull(robot)
end_variable
begin_variable
var10
-1
8
Atom holding(green_block)
Atom on(green_block, blue_block)
Atom on(green_block, orange_block)
Atom on(green_block, pink_block)
Atom on(green_block, purple_block)
Atom on(green_block, red_block)
Atom on(green_block, yellow_block)
Atom ontable(green_block)
end_variable
begin_variable
var11
-1
8
Atom holding(pink_block)
Atom on(pink_block, blue_block)
Atom on(pink_block, green_block)
Atom on(pink_block, orange_block)
Atom on(pink_block, purple_block)
Atom on(pink_block, red_block)
Atom on(pink_block, yellow_block)
Atom ontable(pink_block)
end_variable
begin_variable
var12
-1
8
Atom holding(purple_block)
Atom on(purple_block, blue_block)
Atom on(purple_block, green_block)
Atom on(purple_block, orange_block)
Atom on(purple_block, pink_block)
Atom on(purple_block, red_block)
Atom on(purple_block, yellow_block)
Atom ontable(purple_block)
end_variable
begin_variable
var13
-1
8
Atom holding(red_block)
Atom on(red_block, blue_block)
Atom on(red_block, green_block)
Atom on(red_block, orange_block)
Atom on(red_block, pink_block)
Atom on(red_block, purple_block)
Atom on(red_block, yellow_block)
Atom ontable(red_block)
end_variable
begin_variable
var14
-1
8
Atom holding(yellow_block)
Atom on(yellow_block, blue_block)
Atom on(yellow_block, green_block)
Atom on(yellow_block, orange_block)
Atom on(yellow_block, pink_block)
Atom on(yellow_block, purple_block)
Atom on(yellow_block, red_block)
Atom ontable(yellow_block)
end_variable
8
begin_mutex_group
8
2 0
0 0
10 1
1 1
11 1
12 1
13 1
14 1
end_mutex_group
begin_mutex_group
8
4 0
0 1
10 0
1 2
11 2
12 2
13 2
14 2
end_mutex_group
begin_mutex_group
8
3 0
0 2
10 2
1 0
11 3
12 3
13 3
14 3
end_mutex_group
begin_mutex_group
8
5 0
0 3
10 3
1 3
11 0
12 4
13 4
14 4
end_mutex_group
begin_mutex_group
8
6 0
0 4
10 4
1 4
11 4
12 0
13 5
14 5
end_mutex_group
begin_mutex_group
8
7 0
0 5
10 5
1 5
11 5
12 5
13 0
14 6
end_mutex_group
begin_mutex_group
8
8 0
0 6
10 6
1 6
11 6
12 6
13 6
14 0
end_mutex_group
begin_mutex_group
8
9 0
0 0
10 0
1 0
11 0
12 0
13 0
14 0
end_mutex_group
begin_state
7
7
0
0
0
0
0
0
0
0
7
7
7
7
7
end_state
begin_goal
5
10 5
11 2
12 1
13 5
14 4
end_goal
98
begin_operator
pick-up blue_block robot
0
3
0 2 0 1
0 9 0 1
0 0 7 0
1
end_operator
begin_operator
pick-up green_block robot
0
3
0 4 0 1
0 9 0 1
0 10 7 0
1
end_operator
begin_operator
pick-up orange_block robot
0
3
0 3 0 1
0 9 0 1
0 1 7 0
1
end_operator
begin_operator
pick-up pink_block robot
0
3
0 5 0 1
0 9 0 1
0 11 7 0
1
end_operator
begin_operator
pick-up purple_block robot
0
3
0 6 0 1
0 9 0 1
0 12 7 0
1
end_operator
begin_operator
pick-up red_block robot
0
3
0 7 0 1
0 9 0 1
0 13 7 0
1
end_operator
begin_operator
pick-up yellow_block robot
0
3
0 8 0 1
0 9 0 1
0 14 7 0
1
end_operator
begin_operator
put-down blue_block robot
0
3
0 2 -1 0
0 9 1 0
0 0 0 7
1
end_operator
begin_operator
put-down green_block robot
0
3
0 4 -1 0
0 9 1 0
0 10 0 7
1
end_operator
begin_operator
put-down orange_block robot
0
3
0 3 -1 0
0 9 1 0
0 1 0 7
1
end_operator
begin_operator
put-down pink_block robot
0
3
0 5 -1 0
0 9 1 0
0 11 0 7
1
end_operator
begin_operator
put-down purple_block robot
0
3
0 6 -1 0
0 9 1 0
0 12 0 7
1
end_operator
begin_operator
put-down red_block robot
0
3
0 7 -1 0
0 9 1 0
0 13 0 7
1
end_operator
begin_operator
put-down yellow_block robot
0
3
0 8 -1 0
0 9 1 0
0 14 0 7
1
end_operator
begin_operator
stack blue_block green_block robot
0
4
0 2 -1 0
0 4 0 1
0 9 1 0
0 0 0 1
1
end_operator
begin_operator
stack blue_block orange_block robot
0
4
0 2 -1 0
0 3 0 1
0 9 1 0
0 0 0 2
1
end_operator
begin_operator
stack blue_block pink_block robot
0
4
0 2 -1 0
0 5 0 1
0 9 1 0
0 0 0 3
1
end_operator
begin_operator
stack blue_block purple_block robot
0
4
0 2 -1 0
0 6 0 1
0 9 1 0
0 0 0 4
1
end_operator
begin_operator
stack blue_block red_block robot
0
4
0 2 -1 0
0 7 0 1
0 9 1 0
0 0 0 5
1
end_operator
begin_operator
stack blue_block yellow_block robot
0
4
0 2 -1 0
0 8 0 1
0 9 1 0
0 0 0 6
1
end_operator
begin_operator
stack green_block blue_block robot
0
4
0 2 0 1
0 4 -1 0
0 9 1 0
0 10 0 1
1
end_operator
begin_operator
stack green_block orange_block robot
0
4
0 4 -1 0
0 3 0 1
0 9 1 0
0 10 0 2
1
end_operator
begin_operator
stack green_block pink_block robot
0
4
0 4 -1 0
0 5 0 1
0 9 1 0
0 10 0 3
1
end_operator
begin_operator
stack green_block purple_block robot
0
4
0 4 -1 0
0 6 0 1
0 9 1 0
0 10 0 4
1
end_operator
begin_operator
stack green_block red_block robot
0
4
0 4 -1 0
0 7 0 1
0 9 1 0
0 10 0 5
1
end_operator
begin_operator
stack green_block yellow_block robot
0
4
0 4 -1 0
0 8 0 1
0 9 1 0
0 10 0 6
1
end_operator
begin_operator
stack orange_block blue_block robot
0
4
0 2 0 1
0 3 -1 0
0 9 1 0
0 1 0 1
1
end_operator
begin_operator
stack orange_block green_block robot
0
4
0 4 0 1
0 3 -1 0
0 9 1 0
0 1 0 2
1
end_operator
begin_operator
stack orange_block pink_block robot
0
4
0 3 -1 0
0 5 0 1
0 9 1 0
0 1 0 3
1
end_operator
begin_operator
stack orange_block purple_block robot
0
4
0 3 -1 0
0 6 0 1
0 9 1 0
0 1 0 4
1
end_operator
begin_operator
stack orange_block red_block robot
0
4
0 3 -1 0
0 7 0 1
0 9 1 0
0 1 0 5
1
end_operator
begin_operator
stack orange_block yellow_block robot
0
4
0 3 -1 0
0 8 0 1
0 9 1 0
0 1 0 6
1
end_operator
begin_operator
stack pink_block blue_block robot
0
4
0 2 0 1
0 5 -1 0
0 9 1 0
0 11 0 1
1
end_operator
begin_operator
stack pink_block green_block robot
0
4
0 4 0 1
0 5 -1 0
0 9 1 0
0 11 0 2
1
end_operator
begin_operator
stack pink_block orange_block robot
0
4
0 3 0 1
0 5 -1 0
0 9 1 0
0 11 0 3
1
end_operator
begin_operator
stack pink_block purple_block robot
0
4
0 5 -1 0
0 6 0 1
0 9 1 0
0 11 0 4
1
end_operator
begin_operator
stack pink_block red_block robot
0
4
0 5 -1 0
0 7 0 1
0 9 1 0
0 11 0 5
1
end_operator
begin_operator
stack pink_block yellow_block robot
0
4
0 5 -1 0
0 8 0 1
0 9 1 0
0 11 0 6
1
end_operator
begin_operator
stack purple_block blue_block robot
0
4
0 2 0 1
0 6 -1 0
0 9 1 0
0 12 0 1
1
end_operator
begin_operator
stack purple_block green_block robot
0
4
0 4 0 1
0 6 -1 0
0 9 1 0
0 12 0 2
1
end_operator
begin_operator
stack purple_block orange_block robot
0
4
0 3 0 1
0 6 -1 0
0 9 1 0
0 12 0 3
1
end_operator
begin_operator
stack purple_block pink_block robot
0
4
0 5 0 1
0 6 -1 0
0 9 1 0
0 12 0 4
1
end_operator
begin_operator
stack purple_block red_block robot
0
4
0 6 -1 0
0 7 0 1
0 9 1 0
0 12 0 5
1
end_operator
begin_operator
stack purple_block yellow_block robot
0
4
0 6 -1 0
0 8 0 1
0 9 1 0
0 12 0 6
1
end_operator
begin_operator
stack red_block blue_block robot
0
4
0 2 0 1
0 7 -1 0
0 9 1 0
0 13 0 1
1
end_operator
begin_operator
stack red_block green_block robot
0
4
0 4 0 1
0 7 -1 0
0 9 1 0
0 13 0 2
1
end_operator
begin_operator
stack red_block orange_block robot
0
4
0 3 0 1
0 7 -1 0
0 9 1 0
0 13 0 3
1
end_operator
begin_operator
stack red_block pink_block robot
0
4
0 5 0 1
0 7 -1 0
0 9 1 0
0 13 0 4
1
end_operator
begin_operator
stack red_block purple_block robot
0
4
0 6 0 1
0 7 -1 0
0 9 1 0
0 13 0 5
1
end_operator
begin_operator
stack red_block yellow_block robot
0
4
0 7 -1 0
0 8 0 1
0 9 1 0
0 13 0 6
1
end_operator
begin_operator
stack yellow_block blue_block robot
0
4
0 2 0 1
0 8 -1 0
0 9 1 0
0 14 0 1
1
end_operator
begin_operator
stack yellow_block green_block robot
0
4
0 4 0 1
0 8 -1 0
0 9 1 0
0 14 0 2
1
end_operator
begin_operator
stack yellow_block orange_block robot
0
4
0 3 0 1
0 8 -1 0
0 9 1 0
0 14 0 3
1
end_operator
begin_operator
stack yellow_block pink_block robot
0
4
0 5 0 1
0 8 -1 0
0 9 1 0
0 14 0 4
1
end_operator
begin_operator
stack yellow_block purple_block robot
0
4
0 6 0 1
0 8 -1 0
0 9 1 0
0 14 0 5
1
end_operator
begin_operator
stack yellow_block red_block robot
0
4
0 7 0 1
0 8 -1 0
0 9 1 0
0 14 0 6
1
end_operator
begin_operator
unstack blue_block green_block robot
0
4
0 2 0 1
0 4 -1 0
0 9 0 1
0 0 1 0
1
end_operator
begin_operator
unstack blue_block orange_block robot
0
4
0 2 0 1
0 3 -1 0
0 9 0 1
0 0 2 0
1
end_operator
begin_operator
unstack blue_block pink_block robot
0
4
0 2 0 1
0 5 -1 0
0 9 0 1
0 0 3 0
1
end_operator
begin_operator
unstack blue_block purple_block robot
0
4
0 2 0 1
0 6 -1 0
0 9 0 1
0 0 4 0
1
end_operator
begin_operator
unstack blue_block red_block robot
0
4
0 2 0 1
0 7 -1 0
0 9 0 1
0 0 5 0
1
end_operator
begin_operator
unstack blue_block yellow_block robot
0
4
0 2 0 1
0 8 -1 0
0 9 0 1
0 0 6 0
1
end_operator
begin_operator
unstack green_block blue_block robot
0
4
0 2 -1 0
0 4 0 1
0 9 0 1
0 10 1 0
1
end_operator
begin_operator
unstack green_block orange_block robot
0
4
0 4 0 1
0 3 -1 0
0 9 0 1
0 10 2 0
1
end_operator
begin_operator
unstack green_block pink_block robot
0
4
0 4 0 1
0 5 -1 0
0 9 0 1
0 10 3 0
1
end_operator
begin_operator
unstack green_block purple_block robot
0
4
0 4 0 1
0 6 -1 0
0 9 0 1
0 10 4 0
1
end_operator
begin_operator
unstack green_block red_block robot
0
4
0 4 0 1
0 7 -1 0
0 9 0 1
0 10 5 0
1
end_operator
begin_operator
unstack green_block yellow_block robot
0
4
0 4 0 1
0 8 -1 0
0 9 0 1
0 10 6 0
1
end_operator
begin_operator
unstack orange_block blue_block robot
0
4
0 2 -1 0
0 3 0 1
0 9 0 1
0 1 1 0
1
end_operator
begin_operator
unstack orange_block green_block robot
0
4
0 4 -1 0
0 3 0 1
0 9 0 1
0 1 2 0
1
end_operator
begin_operator
unstack orange_block pink_block robot
0
4
0 3 0 1
0 5 -1 0
0 9 0 1
0 1 3 0
1
end_operator
begin_operator
unstack orange_block purple_block robot
0
4
0 3 0 1
0 6 -1 0
0 9 0 1
0 1 4 0
1
end_operator
begin_operator
unstack orange_block red_block robot
0
4
0 3 0 1
0 7 -1 0
0 9 0 1
0 1 5 0
1
end_operator
begin_operator
unstack orange_block yellow_block robot
0
4
0 3 0 1
0 8 -1 0
0 9 0 1
0 1 6 0
1
end_operator
begin_operator
unstack pink_block blue_block robot
0
4
0 2 -1 0
0 5 0 1
0 9 0 1
0 11 1 0
1
end_operator
begin_operator
unstack pink_block green_block robot
0
4
0 4 -1 0
0 5 0 1
0 9 0 1
0 11 2 0
1
end_operator
begin_operator
unstack pink_block orange_block robot
0
4
0 3 -1 0
0 5 0 1
0 9 0 1
0 11 3 0
1
end_operator
begin_operator
unstack pink_block purple_block robot
0
4
0 5 0 1
0 6 -1 0
0 9 0 1
0 11 4 0
1
end_operator
begin_operator
unstack pink_block red_block robot
0
4
0 5 0 1
0 7 -1 0
0 9 0 1
0 11 5 0
1
end_operator
begin_operator
unstack pink_block yellow_block robot
0
4
0 5 0 1
0 8 -1 0
0 9 0 1
0 11 6 0
1
end_operator
begin_operator
unstack purple_block blue_block robot
0
4
0 2 -1 0
0 6 0 1
0 9 0 1
0 12 1 0
1
end_operator
begin_operator
unstack purple_block green_block robot
0
4
0 4 -1 0
0 6 0 1
0 9 0 1
0 12 2 0
1
end_operator
begin_operator
unstack purple_block orange_block robot
0
4
0 3 -1 0
0 6 0 1
0 9 0 1
0 12 3 0
1
end_operator
begin_operator
unstack purple_block pink_block robot
0
4
0 5 -1 0
0 6 0 1
0 9 0 1
0 12 4 0
1
end_operator
begin_operator
unstack purple_block red_block robot
0
4
0 6 0 1
0 7 -1 0
0 9 0 1
0 12 5 0
1
end_operator
begin_operator
unstack purple_block yellow_block robot
0
4
0 6 0 1
0 8 -1 0
0 9 0 1
0 12 6 0
1
end_operator
begin_operator
unstack red_block blue_block robot
0
4
0 2 -1 0
0 7 0 1
0 9 0 1
0 13 1 0
1
end_operator
begin_operator
unstack red_block green_block robot
0
4
0 4 -1 0
0 7 0 1
0 9 0 1
0 13 2 0
1
end_operator
begin_operator
unstack red_block orange_block robot
0
4
0 3 -1 0
0 7 0 1
0 9 0 1
0 13 3 0
1
end_operator
begin_operator
unstack red_block pink_block robot
0
4
0 5 -1 0
0 7 0 1
0 9 0 1
0 13 4 0
1
end_operator
begin_operator
unstack red_block purple_block robot
0
4
0 6 -1 0
0 7 0 1
0 9 0 1
0 13 5 0
1
end_operator
begin_operator
unstack red_block yellow_block robot
0
4
0 7 0 1
0 8 -1 0
0 9 0 1
0 13 6 0
1
end_operator
begin_operator
unstack yellow_block blue_block robot
0
4
0 2 -1 0
0 8 0 1
0 9 0 1
0 14 1 0
1
end_operator
begin_operator
unstack yellow_block green_block robot
0
4
0 4 -1 0
0 8 0 1
0 9 0 1
0 14 2 0
1
end_operator
begin_operator
unstack yellow_block orange_block robot
0
4
0 3 -1 0
0 8 0 1
0 9 0 1
0 14 3 0
1
end_operator
begin_operator
unstack yellow_block pink_block robot
0
4
0 5 -1 0
0 8 0 1
0 9 0 1
0 14 4 0
1
end_operator
begin_operator
unstack yellow_block purple_block robot
0
4
0 6 -1 0
0 8 0 1
0 9 0 1
0 14 5 0
1
end_operator
begin_operator
unstack yellow_block red_block robot
0
4
0 7 -1 0
0 8 0 1
0 9 0 1
0 14 6 0
1
end_operator
0
