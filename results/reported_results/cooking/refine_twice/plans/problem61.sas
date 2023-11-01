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
2
Atom at(knife, bowl)
NegatedAtom at(knife, bowl)
end_variable
begin_variable
var1
-1
2
Atom at(knife, counter)
NegatedAtom at(knife, counter)
end_variable
begin_variable
var2
-1
2
Atom at(knife, cutting_board)
NegatedAtom at(knife, cutting_board)
end_variable
begin_variable
var3
-1
2
Atom available(knife)
NegatedAtom available(knife)
end_variable
begin_variable
var4
-1
5
Atom carry(a_bot, carrot)
Atom carry(a_bot, cucumber)
Atom carry(a_bot, knife)
Atom carry(a_bot, tomato)
Atom free(a_bot)
end_variable
begin_variable
var5
-1
2
Atom available(carrot)
NegatedAtom available(carrot)
end_variable
begin_variable
var6
-1
2
Atom available(cucumber)
NegatedAtom available(cucumber)
end_variable
begin_variable
var7
-1
2
Atom available(tomato)
NegatedAtom available(tomato)
end_variable
begin_variable
var8
-1
5
Atom carry(b_bot, carrot)
Atom carry(b_bot, cucumber)
Atom carry(b_bot, knife)
Atom carry(b_bot, tomato)
Atom free(b_bot)
end_variable
begin_variable
var9
-1
4
Atom at(carrot, bowl)
Atom at(carrot, counter)
Atom at(carrot, cutting_board)
<none of those>
end_variable
begin_variable
var10
-1
4
Atom at(cucumber, bowl)
Atom at(cucumber, counter)
Atom at(cucumber, cutting_board)
<none of those>
end_variable
begin_variable
var11
-1
4
Atom at(tomato, bowl)
Atom at(tomato, counter)
Atom at(tomato, cutting_board)
<none of those>
end_variable
begin_variable
var12
-1
2
Atom is-sliced(cucumber)
Atom is-whole(cucumber)
end_variable
begin_variable
var13
-1
2
Atom is-sliced(carrot)
Atom is-whole(carrot)
end_variable
begin_variable
var14
-1
2
Atom is-sliced(tomato)
Atom is-whole(tomato)
end_variable
7
begin_mutex_group
5
9 0
9 1
9 2
4 0
8 0
end_mutex_group
begin_mutex_group
5
10 0
10 1
10 2
4 1
8 1
end_mutex_group
begin_mutex_group
5
11 0
11 1
11 2
4 3
8 3
end_mutex_group
begin_mutex_group
3
5 0
4 0
8 0
end_mutex_group
begin_mutex_group
3
6 0
4 1
8 1
end_mutex_group
begin_mutex_group
3
3 0
4 2
8 2
end_mutex_group
begin_mutex_group
3
7 0
4 3
8 3
end_mutex_group
begin_state
1
0
1
1
4
0
0
0
2
1
1
1
1
1
1
end_state
begin_goal
6
9 0
10 0
11 0
12 0
13 0
14 0
end_goal
90
begin_operator
pick a_bot carrot bowl
0
3
0 9 0 3
0 5 0 1
0 4 4 0
1
end_operator
begin_operator
pick a_bot carrot counter
0
3
0 9 1 3
0 5 0 1
0 4 4 0
1
end_operator
begin_operator
pick a_bot carrot cutting_board
0
3
0 9 2 3
0 5 0 1
0 4 4 0
1
end_operator
begin_operator
pick a_bot cucumber bowl
0
3
0 10 0 3
0 6 0 1
0 4 4 1
1
end_operator
begin_operator
pick a_bot cucumber counter
0
3
0 10 1 3
0 6 0 1
0 4 4 1
1
end_operator
begin_operator
pick a_bot cucumber cutting_board
0
3
0 10 2 3
0 6 0 1
0 4 4 1
1
end_operator
begin_operator
pick a_bot knife bowl
0
3
0 0 0 1
0 3 0 1
0 4 4 2
1
end_operator
begin_operator
pick a_bot knife counter
0
3
0 1 0 1
0 3 0 1
0 4 4 2
1
end_operator
begin_operator
pick a_bot knife cutting_board
0
3
0 2 0 1
0 3 0 1
0 4 4 2
1
end_operator
begin_operator
pick a_bot tomato bowl
0
3
0 11 0 3
0 7 0 1
0 4 4 3
1
end_operator
begin_operator
pick a_bot tomato counter
0
3
0 11 1 3
0 7 0 1
0 4 4 3
1
end_operator
begin_operator
pick a_bot tomato cutting_board
0
3
0 11 2 3
0 7 0 1
0 4 4 3
1
end_operator
begin_operator
pick b_bot carrot bowl
0
3
0 9 0 3
0 5 0 1
0 8 4 0
1
end_operator
begin_operator
pick b_bot carrot counter
0
3
0 9 1 3
0 5 0 1
0 8 4 0
1
end_operator
begin_operator
pick b_bot carrot cutting_board
0
3
0 9 2 3
0 5 0 1
0 8 4 0
1
end_operator
begin_operator
pick b_bot cucumber bowl
0
3
0 10 0 3
0 6 0 1
0 8 4 1
1
end_operator
begin_operator
pick b_bot cucumber counter
0
3
0 10 1 3
0 6 0 1
0 8 4 1
1
end_operator
begin_operator
pick b_bot cucumber cutting_board
0
3
0 10 2 3
0 6 0 1
0 8 4 1
1
end_operator
begin_operator
pick b_bot knife bowl
0
3
0 0 0 1
0 3 0 1
0 8 4 2
1
end_operator
begin_operator
pick b_bot knife counter
0
3
0 1 0 1
0 3 0 1
0 8 4 2
1
end_operator
begin_operator
pick b_bot knife cutting_board
0
3
0 2 0 1
0 3 0 1
0 8 4 2
1
end_operator
begin_operator
pick b_bot tomato bowl
0
3
0 11 0 3
0 7 0 1
0 8 4 3
1
end_operator
begin_operator
pick b_bot tomato counter
0
3
0 11 1 3
0 7 0 1
0 8 4 3
1
end_operator
begin_operator
pick b_bot tomato cutting_board
0
3
0 11 2 3
0 7 0 1
0 8 4 3
1
end_operator
begin_operator
place a_bot carrot bowl
0
3
0 9 1 0
0 5 -1 0
0 4 0 4
1
end_operator
begin_operator
place a_bot carrot bowl
0
3
0 9 2 0
0 5 -1 0
0 4 0 4
1
end_operator
begin_operator
place a_bot carrot bowl
0
3
0 9 3 0
0 5 -1 0
0 4 0 4
1
end_operator
begin_operator
place a_bot carrot counter
0
3
0 9 0 1
0 5 -1 0
0 4 0 4
1
end_operator
begin_operator
place a_bot carrot counter
0
3
0 9 2 1
0 5 -1 0
0 4 0 4
1
end_operator
begin_operator
place a_bot carrot counter
0
3
0 9 3 1
0 5 -1 0
0 4 0 4
1
end_operator
begin_operator
place a_bot carrot cutting_board
0
3
0 9 0 2
0 5 -1 0
0 4 0 4
1
end_operator
begin_operator
place a_bot carrot cutting_board
0
3
0 9 1 2
0 5 -1 0
0 4 0 4
1
end_operator
begin_operator
place a_bot carrot cutting_board
0
3
0 9 3 2
0 5 -1 0
0 4 0 4
1
end_operator
begin_operator
place a_bot cucumber bowl
0
3
0 10 1 0
0 6 -1 0
0 4 1 4
1
end_operator
begin_operator
place a_bot cucumber bowl
0
3
0 10 2 0
0 6 -1 0
0 4 1 4
1
end_operator
begin_operator
place a_bot cucumber bowl
0
3
0 10 3 0
0 6 -1 0
0 4 1 4
1
end_operator
begin_operator
place a_bot cucumber counter
0
3
0 10 0 1
0 6 -1 0
0 4 1 4
1
end_operator
begin_operator
place a_bot cucumber counter
0
3
0 10 2 1
0 6 -1 0
0 4 1 4
1
end_operator
begin_operator
place a_bot cucumber counter
0
3
0 10 3 1
0 6 -1 0
0 4 1 4
1
end_operator
begin_operator
place a_bot cucumber cutting_board
0
3
0 10 0 2
0 6 -1 0
0 4 1 4
1
end_operator
begin_operator
place a_bot cucumber cutting_board
0
3
0 10 1 2
0 6 -1 0
0 4 1 4
1
end_operator
begin_operator
place a_bot cucumber cutting_board
0
3
0 10 3 2
0 6 -1 0
0 4 1 4
1
end_operator
begin_operator
place a_bot knife bowl
0
3
0 0 1 0
0 3 -1 0
0 4 2 4
1
end_operator
begin_operator
place a_bot knife counter
0
3
0 1 1 0
0 3 -1 0
0 4 2 4
1
end_operator
begin_operator
place a_bot knife cutting_board
0
3
0 2 1 0
0 3 -1 0
0 4 2 4
1
end_operator
begin_operator
place a_bot tomato bowl
0
3
0 11 1 0
0 7 -1 0
0 4 3 4
1
end_operator
begin_operator
place a_bot tomato bowl
0
3
0 11 2 0
0 7 -1 0
0 4 3 4
1
end_operator
begin_operator
place a_bot tomato bowl
0
3
0 11 3 0
0 7 -1 0
0 4 3 4
1
end_operator
begin_operator
place a_bot tomato counter
0
3
0 11 0 1
0 7 -1 0
0 4 3 4
1
end_operator
begin_operator
place a_bot tomato counter
0
3
0 11 2 1
0 7 -1 0
0 4 3 4
1
end_operator
begin_operator
place a_bot tomato counter
0
3
0 11 3 1
0 7 -1 0
0 4 3 4
1
end_operator
begin_operator
place a_bot tomato cutting_board
0
3
0 11 0 2
0 7 -1 0
0 4 3 4
1
end_operator
begin_operator
place a_bot tomato cutting_board
0
3
0 11 1 2
0 7 -1 0
0 4 3 4
1
end_operator
begin_operator
place a_bot tomato cutting_board
0
3
0 11 3 2
0 7 -1 0
0 4 3 4
1
end_operator
begin_operator
place b_bot carrot bowl
0
3
0 9 1 0
0 5 -1 0
0 8 0 4
1
end_operator
begin_operator
place b_bot carrot bowl
0
3
0 9 2 0
0 5 -1 0
0 8 0 4
1
end_operator
begin_operator
place b_bot carrot bowl
0
3
0 9 3 0
0 5 -1 0
0 8 0 4
1
end_operator
begin_operator
place b_bot carrot counter
0
3
0 9 0 1
0 5 -1 0
0 8 0 4
1
end_operator
begin_operator
place b_bot carrot counter
0
3
0 9 2 1
0 5 -1 0
0 8 0 4
1
end_operator
begin_operator
place b_bot carrot counter
0
3
0 9 3 1
0 5 -1 0
0 8 0 4
1
end_operator
begin_operator
place b_bot carrot cutting_board
0
3
0 9 0 2
0 5 -1 0
0 8 0 4
1
end_operator
begin_operator
place b_bot carrot cutting_board
0
3
0 9 1 2
0 5 -1 0
0 8 0 4
1
end_operator
begin_operator
place b_bot carrot cutting_board
0
3
0 9 3 2
0 5 -1 0
0 8 0 4
1
end_operator
begin_operator
place b_bot cucumber bowl
0
3
0 10 1 0
0 6 -1 0
0 8 1 4
1
end_operator
begin_operator
place b_bot cucumber bowl
0
3
0 10 2 0
0 6 -1 0
0 8 1 4
1
end_operator
begin_operator
place b_bot cucumber bowl
0
3
0 10 3 0
0 6 -1 0
0 8 1 4
1
end_operator
begin_operator
place b_bot cucumber counter
0
3
0 10 0 1
0 6 -1 0
0 8 1 4
1
end_operator
begin_operator
place b_bot cucumber counter
0
3
0 10 2 1
0 6 -1 0
0 8 1 4
1
end_operator
begin_operator
place b_bot cucumber counter
0
3
0 10 3 1
0 6 -1 0
0 8 1 4
1
end_operator
begin_operator
place b_bot cucumber cutting_board
0
3
0 10 0 2
0 6 -1 0
0 8 1 4
1
end_operator
begin_operator
place b_bot cucumber cutting_board
0
3
0 10 1 2
0 6 -1 0
0 8 1 4
1
end_operator
begin_operator
place b_bot cucumber cutting_board
0
3
0 10 3 2
0 6 -1 0
0 8 1 4
1
end_operator
begin_operator
place b_bot knife bowl
0
3
0 0 1 0
0 3 -1 0
0 8 2 4
1
end_operator
begin_operator
place b_bot knife counter
0
3
0 1 1 0
0 3 -1 0
0 8 2 4
1
end_operator
begin_operator
place b_bot knife cutting_board
0
3
0 2 1 0
0 3 -1 0
0 8 2 4
1
end_operator
begin_operator
place b_bot tomato bowl
0
3
0 11 1 0
0 7 -1 0
0 8 3 4
1
end_operator
begin_operator
place b_bot tomato bowl
0
3
0 11 2 0
0 7 -1 0
0 8 3 4
1
end_operator
begin_operator
place b_bot tomato bowl
0
3
0 11 3 0
0 7 -1 0
0 8 3 4
1
end_operator
begin_operator
place b_bot tomato counter
0
3
0 11 0 1
0 7 -1 0
0 8 3 4
1
end_operator
begin_operator
place b_bot tomato counter
0
3
0 11 2 1
0 7 -1 0
0 8 3 4
1
end_operator
begin_operator
place b_bot tomato counter
0
3
0 11 3 1
0 7 -1 0
0 8 3 4
1
end_operator
begin_operator
place b_bot tomato cutting_board
0
3
0 11 0 2
0 7 -1 0
0 8 3 4
1
end_operator
begin_operator
place b_bot tomato cutting_board
0
3
0 11 1 2
0 7 -1 0
0 8 3 4
1
end_operator
begin_operator
place b_bot tomato cutting_board
0
3
0 11 3 2
0 7 -1 0
0 8 3 4
1
end_operator
begin_operator
slice a_bot carrot knife cutting_board
2
9 2
4 2
1
0 13 1 0
1
end_operator
begin_operator
slice a_bot cucumber knife cutting_board
2
10 2
4 2
1
0 12 1 0
1
end_operator
begin_operator
slice a_bot tomato knife cutting_board
2
11 2
4 2
1
0 14 1 0
1
end_operator
begin_operator
slice b_bot carrot knife cutting_board
2
9 2
8 2
1
0 13 1 0
1
end_operator
begin_operator
slice b_bot cucumber knife cutting_board
2
10 2
8 2
1
0 12 1 0
1
end_operator
begin_operator
slice b_bot tomato knife cutting_board
2
11 2
8 2
1
0 14 1 0
1
end_operator
0
