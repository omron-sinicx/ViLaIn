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
4
Atom at(cucumber2, bowl)
Atom at(cucumber2, counter)
Atom at(cucumber2, cutting_board)
<none of those>
end_variable
begin_variable
var1
-1
2
Atom available(cucumber2)
NegatedAtom available(cucumber2)
end_variable
begin_variable
var2
-1
4
Atom at(knife, bowl)
Atom at(knife, counter)
Atom at(knife, cutting_board)
<none of those>
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
Atom carry(a_bot, cucumber2)
Atom carry(a_bot, knife)
Atom free(a_bot)
end_variable
begin_variable
var5
-1
5
Atom carry(b_bot, carrot)
Atom carry(b_bot, cucumber)
Atom carry(b_bot, cucumber2)
Atom carry(b_bot, knife)
Atom free(b_bot)
end_variable
begin_variable
var6
-1
2
Atom available(carrot)
NegatedAtom available(carrot)
end_variable
begin_variable
var7
-1
2
Atom available(cucumber)
NegatedAtom available(cucumber)
end_variable
begin_variable
var8
-1
4
Atom at(carrot, bowl)
Atom at(carrot, counter)
Atom at(carrot, cutting_board)
<none of those>
end_variable
begin_variable
var9
-1
4
Atom at(cucumber, bowl)
Atom at(cucumber, counter)
Atom at(cucumber, cutting_board)
<none of those>
end_variable
begin_variable
var10
-1
2
Atom is-sliced(carrot)
Atom is-whole(carrot)
end_variable
8
begin_mutex_group
5
8 0
8 1
8 2
4 0
5 0
end_mutex_group
begin_mutex_group
5
9 0
9 1
9 2
4 1
5 1
end_mutex_group
begin_mutex_group
5
0 0
0 1
0 2
4 2
5 2
end_mutex_group
begin_mutex_group
5
2 0
2 1
2 2
4 3
5 3
end_mutex_group
begin_mutex_group
3
6 0
4 0
5 0
end_mutex_group
begin_mutex_group
3
7 0
4 1
5 1
end_mutex_group
begin_mutex_group
3
1 0
4 2
5 2
end_mutex_group
begin_mutex_group
3
3 0
4 3
5 3
end_mutex_group
begin_state
1
0
3
1
4
3
0
0
1
1
1
end_state
begin_goal
3
8 0
9 0
10 0
end_goal
98
begin_operator
pick a_bot carrot bowl
0
3
0 8 0 3
0 6 0 1
0 4 4 0
1
end_operator
begin_operator
pick a_bot carrot counter
0
3
0 8 1 3
0 6 0 1
0 4 4 0
1
end_operator
begin_operator
pick a_bot carrot cutting_board
0
3
0 8 2 3
0 6 0 1
0 4 4 0
1
end_operator
begin_operator
pick a_bot cucumber bowl
0
3
0 9 0 3
0 7 0 1
0 4 4 1
1
end_operator
begin_operator
pick a_bot cucumber counter
0
3
0 9 1 3
0 7 0 1
0 4 4 1
1
end_operator
begin_operator
pick a_bot cucumber cutting_board
0
3
0 9 2 3
0 7 0 1
0 4 4 1
1
end_operator
begin_operator
pick a_bot cucumber2 bowl
0
3
0 0 0 3
0 1 0 1
0 4 4 2
1
end_operator
begin_operator
pick a_bot cucumber2 counter
0
3
0 0 1 3
0 1 0 1
0 4 4 2
1
end_operator
begin_operator
pick a_bot cucumber2 cutting_board
0
3
0 0 2 3
0 1 0 1
0 4 4 2
1
end_operator
begin_operator
pick a_bot knife bowl
0
3
0 2 0 3
0 3 0 1
0 4 4 3
1
end_operator
begin_operator
pick a_bot knife counter
0
3
0 2 1 3
0 3 0 1
0 4 4 3
1
end_operator
begin_operator
pick a_bot knife cutting_board
0
3
0 2 2 3
0 3 0 1
0 4 4 3
1
end_operator
begin_operator
pick b_bot carrot bowl
0
3
0 8 0 3
0 6 0 1
0 5 4 0
1
end_operator
begin_operator
pick b_bot carrot counter
0
3
0 8 1 3
0 6 0 1
0 5 4 0
1
end_operator
begin_operator
pick b_bot carrot cutting_board
0
3
0 8 2 3
0 6 0 1
0 5 4 0
1
end_operator
begin_operator
pick b_bot cucumber bowl
0
3
0 9 0 3
0 7 0 1
0 5 4 1
1
end_operator
begin_operator
pick b_bot cucumber counter
0
3
0 9 1 3
0 7 0 1
0 5 4 1
1
end_operator
begin_operator
pick b_bot cucumber cutting_board
0
3
0 9 2 3
0 7 0 1
0 5 4 1
1
end_operator
begin_operator
pick b_bot cucumber2 bowl
0
3
0 0 0 3
0 1 0 1
0 5 4 2
1
end_operator
begin_operator
pick b_bot cucumber2 counter
0
3
0 0 1 3
0 1 0 1
0 5 4 2
1
end_operator
begin_operator
pick b_bot cucumber2 cutting_board
0
3
0 0 2 3
0 1 0 1
0 5 4 2
1
end_operator
begin_operator
pick b_bot knife bowl
0
3
0 2 0 3
0 3 0 1
0 5 4 3
1
end_operator
begin_operator
pick b_bot knife counter
0
3
0 2 1 3
0 3 0 1
0 5 4 3
1
end_operator
begin_operator
pick b_bot knife cutting_board
0
3
0 2 2 3
0 3 0 1
0 5 4 3
1
end_operator
begin_operator
place a_bot carrot bowl
0
3
0 8 1 0
0 6 -1 0
0 4 0 4
1
end_operator
begin_operator
place a_bot carrot bowl
0
3
0 8 2 0
0 6 -1 0
0 4 0 4
1
end_operator
begin_operator
place a_bot carrot bowl
0
3
0 8 3 0
0 6 -1 0
0 4 0 4
1
end_operator
begin_operator
place a_bot carrot counter
0
3
0 8 0 1
0 6 -1 0
0 4 0 4
1
end_operator
begin_operator
place a_bot carrot counter
0
3
0 8 2 1
0 6 -1 0
0 4 0 4
1
end_operator
begin_operator
place a_bot carrot counter
0
3
0 8 3 1
0 6 -1 0
0 4 0 4
1
end_operator
begin_operator
place a_bot carrot cutting_board
0
3
0 8 0 2
0 6 -1 0
0 4 0 4
1
end_operator
begin_operator
place a_bot carrot cutting_board
0
3
0 8 1 2
0 6 -1 0
0 4 0 4
1
end_operator
begin_operator
place a_bot carrot cutting_board
0
3
0 8 3 2
0 6 -1 0
0 4 0 4
1
end_operator
begin_operator
place a_bot cucumber bowl
0
3
0 9 1 0
0 7 -1 0
0 4 1 4
1
end_operator
begin_operator
place a_bot cucumber bowl
0
3
0 9 2 0
0 7 -1 0
0 4 1 4
1
end_operator
begin_operator
place a_bot cucumber bowl
0
3
0 9 3 0
0 7 -1 0
0 4 1 4
1
end_operator
begin_operator
place a_bot cucumber counter
0
3
0 9 0 1
0 7 -1 0
0 4 1 4
1
end_operator
begin_operator
place a_bot cucumber counter
0
3
0 9 2 1
0 7 -1 0
0 4 1 4
1
end_operator
begin_operator
place a_bot cucumber counter
0
3
0 9 3 1
0 7 -1 0
0 4 1 4
1
end_operator
begin_operator
place a_bot cucumber cutting_board
0
3
0 9 0 2
0 7 -1 0
0 4 1 4
1
end_operator
begin_operator
place a_bot cucumber cutting_board
0
3
0 9 1 2
0 7 -1 0
0 4 1 4
1
end_operator
begin_operator
place a_bot cucumber cutting_board
0
3
0 9 3 2
0 7 -1 0
0 4 1 4
1
end_operator
begin_operator
place a_bot cucumber2 bowl
0
3
0 0 1 0
0 1 -1 0
0 4 2 4
1
end_operator
begin_operator
place a_bot cucumber2 bowl
0
3
0 0 2 0
0 1 -1 0
0 4 2 4
1
end_operator
begin_operator
place a_bot cucumber2 bowl
0
3
0 0 3 0
0 1 -1 0
0 4 2 4
1
end_operator
begin_operator
place a_bot cucumber2 counter
0
3
0 0 0 1
0 1 -1 0
0 4 2 4
1
end_operator
begin_operator
place a_bot cucumber2 counter
0
3
0 0 2 1
0 1 -1 0
0 4 2 4
1
end_operator
begin_operator
place a_bot cucumber2 counter
0
3
0 0 3 1
0 1 -1 0
0 4 2 4
1
end_operator
begin_operator
place a_bot cucumber2 cutting_board
0
3
0 0 0 2
0 1 -1 0
0 4 2 4
1
end_operator
begin_operator
place a_bot cucumber2 cutting_board
0
3
0 0 1 2
0 1 -1 0
0 4 2 4
1
end_operator
begin_operator
place a_bot cucumber2 cutting_board
0
3
0 0 3 2
0 1 -1 0
0 4 2 4
1
end_operator
begin_operator
place a_bot knife bowl
0
3
0 2 1 0
0 3 -1 0
0 4 3 4
1
end_operator
begin_operator
place a_bot knife bowl
0
3
0 2 2 0
0 3 -1 0
0 4 3 4
1
end_operator
begin_operator
place a_bot knife bowl
0
3
0 2 3 0
0 3 -1 0
0 4 3 4
1
end_operator
begin_operator
place a_bot knife counter
0
3
0 2 0 1
0 3 -1 0
0 4 3 4
1
end_operator
begin_operator
place a_bot knife counter
0
3
0 2 2 1
0 3 -1 0
0 4 3 4
1
end_operator
begin_operator
place a_bot knife counter
0
3
0 2 3 1
0 3 -1 0
0 4 3 4
1
end_operator
begin_operator
place a_bot knife cutting_board
0
3
0 2 0 2
0 3 -1 0
0 4 3 4
1
end_operator
begin_operator
place a_bot knife cutting_board
0
3
0 2 1 2
0 3 -1 0
0 4 3 4
1
end_operator
begin_operator
place a_bot knife cutting_board
0
3
0 2 3 2
0 3 -1 0
0 4 3 4
1
end_operator
begin_operator
place b_bot carrot bowl
0
3
0 8 1 0
0 6 -1 0
0 5 0 4
1
end_operator
begin_operator
place b_bot carrot bowl
0
3
0 8 2 0
0 6 -1 0
0 5 0 4
1
end_operator
begin_operator
place b_bot carrot bowl
0
3
0 8 3 0
0 6 -1 0
0 5 0 4
1
end_operator
begin_operator
place b_bot carrot counter
0
3
0 8 0 1
0 6 -1 0
0 5 0 4
1
end_operator
begin_operator
place b_bot carrot counter
0
3
0 8 2 1
0 6 -1 0
0 5 0 4
1
end_operator
begin_operator
place b_bot carrot counter
0
3
0 8 3 1
0 6 -1 0
0 5 0 4
1
end_operator
begin_operator
place b_bot carrot cutting_board
0
3
0 8 0 2
0 6 -1 0
0 5 0 4
1
end_operator
begin_operator
place b_bot carrot cutting_board
0
3
0 8 1 2
0 6 -1 0
0 5 0 4
1
end_operator
begin_operator
place b_bot carrot cutting_board
0
3
0 8 3 2
0 6 -1 0
0 5 0 4
1
end_operator
begin_operator
place b_bot cucumber bowl
0
3
0 9 1 0
0 7 -1 0
0 5 1 4
1
end_operator
begin_operator
place b_bot cucumber bowl
0
3
0 9 2 0
0 7 -1 0
0 5 1 4
1
end_operator
begin_operator
place b_bot cucumber bowl
0
3
0 9 3 0
0 7 -1 0
0 5 1 4
1
end_operator
begin_operator
place b_bot cucumber counter
0
3
0 9 0 1
0 7 -1 0
0 5 1 4
1
end_operator
begin_operator
place b_bot cucumber counter
0
3
0 9 2 1
0 7 -1 0
0 5 1 4
1
end_operator
begin_operator
place b_bot cucumber counter
0
3
0 9 3 1
0 7 -1 0
0 5 1 4
1
end_operator
begin_operator
place b_bot cucumber cutting_board
0
3
0 9 0 2
0 7 -1 0
0 5 1 4
1
end_operator
begin_operator
place b_bot cucumber cutting_board
0
3
0 9 1 2
0 7 -1 0
0 5 1 4
1
end_operator
begin_operator
place b_bot cucumber cutting_board
0
3
0 9 3 2
0 7 -1 0
0 5 1 4
1
end_operator
begin_operator
place b_bot cucumber2 bowl
0
3
0 0 1 0
0 1 -1 0
0 5 2 4
1
end_operator
begin_operator
place b_bot cucumber2 bowl
0
3
0 0 2 0
0 1 -1 0
0 5 2 4
1
end_operator
begin_operator
place b_bot cucumber2 bowl
0
3
0 0 3 0
0 1 -1 0
0 5 2 4
1
end_operator
begin_operator
place b_bot cucumber2 counter
0
3
0 0 0 1
0 1 -1 0
0 5 2 4
1
end_operator
begin_operator
place b_bot cucumber2 counter
0
3
0 0 2 1
0 1 -1 0
0 5 2 4
1
end_operator
begin_operator
place b_bot cucumber2 counter
0
3
0 0 3 1
0 1 -1 0
0 5 2 4
1
end_operator
begin_operator
place b_bot cucumber2 cutting_board
0
3
0 0 0 2
0 1 -1 0
0 5 2 4
1
end_operator
begin_operator
place b_bot cucumber2 cutting_board
0
3
0 0 1 2
0 1 -1 0
0 5 2 4
1
end_operator
begin_operator
place b_bot cucumber2 cutting_board
0
3
0 0 3 2
0 1 -1 0
0 5 2 4
1
end_operator
begin_operator
place b_bot knife bowl
0
3
0 2 1 0
0 3 -1 0
0 5 3 4
1
end_operator
begin_operator
place b_bot knife bowl
0
3
0 2 2 0
0 3 -1 0
0 5 3 4
1
end_operator
begin_operator
place b_bot knife bowl
0
3
0 2 3 0
0 3 -1 0
0 5 3 4
1
end_operator
begin_operator
place b_bot knife counter
0
3
0 2 0 1
0 3 -1 0
0 5 3 4
1
end_operator
begin_operator
place b_bot knife counter
0
3
0 2 2 1
0 3 -1 0
0 5 3 4
1
end_operator
begin_operator
place b_bot knife counter
0
3
0 2 3 1
0 3 -1 0
0 5 3 4
1
end_operator
begin_operator
place b_bot knife cutting_board
0
3
0 2 0 2
0 3 -1 0
0 5 3 4
1
end_operator
begin_operator
place b_bot knife cutting_board
0
3
0 2 1 2
0 3 -1 0
0 5 3 4
1
end_operator
begin_operator
place b_bot knife cutting_board
0
3
0 2 3 2
0 3 -1 0
0 5 3 4
1
end_operator
begin_operator
slice a_bot carrot knife cutting_board
2
8 2
4 3
1
0 10 1 0
1
end_operator
begin_operator
slice b_bot carrot knife cutting_board
2
8 2
5 3
1
0 10 1 0
1
end_operator
0
