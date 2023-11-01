begin_version
3
end_version
begin_metric
0
end_metric
16
begin_variable
var0
-1
4
Atom at(knife, bowl)
Atom at(knife, counter)
Atom at(knife, cutting_board)
<none of those>
end_variable
begin_variable
var1
-1
2
Atom available(knife)
NegatedAtom available(knife)
end_variable
begin_variable
var2
-1
2
Atom available(cucumber)
NegatedAtom available(cucumber)
end_variable
begin_variable
var3
-1
2
Atom available(cucumber2)
NegatedAtom available(cucumber2)
end_variable
begin_variable
var4
-1
2
Atom available(tomato)
NegatedAtom available(tomato)
end_variable
begin_variable
var5
-1
2
Atom available(tomato2)
NegatedAtom available(tomato2)
end_variable
begin_variable
var6
-1
6
Atom carry(a_bot, cucumber)
Atom carry(a_bot, cucumber2)
Atom carry(a_bot, knife)
Atom carry(a_bot, tomato)
Atom carry(a_bot, tomato2)
Atom free(a_bot)
end_variable
begin_variable
var7
-1
6
Atom carry(b_bot, cucumber)
Atom carry(b_bot, cucumber2)
Atom carry(b_bot, knife)
Atom carry(b_bot, tomato)
Atom carry(b_bot, tomato2)
Atom free(b_bot)
end_variable
begin_variable
var8
-1
4
Atom at(cucumber, bowl)
Atom at(cucumber, counter)
Atom at(cucumber, cutting_board)
<none of those>
end_variable
begin_variable
var9
-1
4
Atom at(cucumber2, bowl)
Atom at(cucumber2, counter)
Atom at(cucumber2, cutting_board)
<none of those>
end_variable
begin_variable
var10
-1
4
Atom at(tomato, bowl)
Atom at(tomato, counter)
Atom at(tomato, cutting_board)
<none of those>
end_variable
begin_variable
var11
-1
4
Atom at(tomato2, bowl)
Atom at(tomato2, counter)
Atom at(tomato2, cutting_board)
<none of those>
end_variable
begin_variable
var12
-1
2
Atom is-sliced(cucumber2)
Atom is-whole(cucumber2)
end_variable
begin_variable
var13
-1
2
Atom is-sliced(cucumber)
Atom is-whole(cucumber)
end_variable
begin_variable
var14
-1
2
Atom is-sliced(tomato2)
Atom is-whole(tomato2)
end_variable
begin_variable
var15
-1
2
Atom is-sliced(tomato)
Atom is-whole(tomato)
end_variable
10
begin_mutex_group
5
8 0
8 1
8 2
6 0
7 0
end_mutex_group
begin_mutex_group
5
9 0
9 1
9 2
6 1
7 1
end_mutex_group
begin_mutex_group
5
0 0
0 1
0 2
6 2
7 2
end_mutex_group
begin_mutex_group
5
10 0
10 1
10 2
6 3
7 3
end_mutex_group
begin_mutex_group
5
11 0
11 1
11 2
6 4
7 4
end_mutex_group
begin_mutex_group
3
2 0
6 0
7 0
end_mutex_group
begin_mutex_group
3
3 0
6 1
7 1
end_mutex_group
begin_mutex_group
3
1 0
6 2
7 2
end_mutex_group
begin_mutex_group
3
4 0
6 3
7 3
end_mutex_group
begin_mutex_group
3
5 0
6 4
7 4
end_mutex_group
begin_state
3
1
0
0
0
0
5
2
1
1
1
1
1
1
1
1
end_state
begin_goal
8
8 0
9 0
10 0
11 0
12 0
13 0
14 0
15 0
end_goal
128
begin_operator
pick a_bot cucumber bowl
0
3
0 8 0 3
0 2 0 1
0 6 5 0
1
end_operator
begin_operator
pick a_bot cucumber counter
0
3
0 8 1 3
0 2 0 1
0 6 5 0
1
end_operator
begin_operator
pick a_bot cucumber cutting_board
0
3
0 8 2 3
0 2 0 1
0 6 5 0
1
end_operator
begin_operator
pick a_bot cucumber2 bowl
0
3
0 9 0 3
0 3 0 1
0 6 5 1
1
end_operator
begin_operator
pick a_bot cucumber2 counter
0
3
0 9 1 3
0 3 0 1
0 6 5 1
1
end_operator
begin_operator
pick a_bot cucumber2 cutting_board
0
3
0 9 2 3
0 3 0 1
0 6 5 1
1
end_operator
begin_operator
pick a_bot knife bowl
0
3
0 0 0 3
0 1 0 1
0 6 5 2
1
end_operator
begin_operator
pick a_bot knife counter
0
3
0 0 1 3
0 1 0 1
0 6 5 2
1
end_operator
begin_operator
pick a_bot knife cutting_board
0
3
0 0 2 3
0 1 0 1
0 6 5 2
1
end_operator
begin_operator
pick a_bot tomato bowl
0
3
0 10 0 3
0 4 0 1
0 6 5 3
1
end_operator
begin_operator
pick a_bot tomato counter
0
3
0 10 1 3
0 4 0 1
0 6 5 3
1
end_operator
begin_operator
pick a_bot tomato cutting_board
0
3
0 10 2 3
0 4 0 1
0 6 5 3
1
end_operator
begin_operator
pick a_bot tomato2 bowl
0
3
0 11 0 3
0 5 0 1
0 6 5 4
1
end_operator
begin_operator
pick a_bot tomato2 counter
0
3
0 11 1 3
0 5 0 1
0 6 5 4
1
end_operator
begin_operator
pick a_bot tomato2 cutting_board
0
3
0 11 2 3
0 5 0 1
0 6 5 4
1
end_operator
begin_operator
pick b_bot cucumber bowl
0
3
0 8 0 3
0 2 0 1
0 7 5 0
1
end_operator
begin_operator
pick b_bot cucumber counter
0
3
0 8 1 3
0 2 0 1
0 7 5 0
1
end_operator
begin_operator
pick b_bot cucumber cutting_board
0
3
0 8 2 3
0 2 0 1
0 7 5 0
1
end_operator
begin_operator
pick b_bot cucumber2 bowl
0
3
0 9 0 3
0 3 0 1
0 7 5 1
1
end_operator
begin_operator
pick b_bot cucumber2 counter
0
3
0 9 1 3
0 3 0 1
0 7 5 1
1
end_operator
begin_operator
pick b_bot cucumber2 cutting_board
0
3
0 9 2 3
0 3 0 1
0 7 5 1
1
end_operator
begin_operator
pick b_bot knife bowl
0
3
0 0 0 3
0 1 0 1
0 7 5 2
1
end_operator
begin_operator
pick b_bot knife counter
0
3
0 0 1 3
0 1 0 1
0 7 5 2
1
end_operator
begin_operator
pick b_bot knife cutting_board
0
3
0 0 2 3
0 1 0 1
0 7 5 2
1
end_operator
begin_operator
pick b_bot tomato bowl
0
3
0 10 0 3
0 4 0 1
0 7 5 3
1
end_operator
begin_operator
pick b_bot tomato counter
0
3
0 10 1 3
0 4 0 1
0 7 5 3
1
end_operator
begin_operator
pick b_bot tomato cutting_board
0
3
0 10 2 3
0 4 0 1
0 7 5 3
1
end_operator
begin_operator
pick b_bot tomato2 bowl
0
3
0 11 0 3
0 5 0 1
0 7 5 4
1
end_operator
begin_operator
pick b_bot tomato2 counter
0
3
0 11 1 3
0 5 0 1
0 7 5 4
1
end_operator
begin_operator
pick b_bot tomato2 cutting_board
0
3
0 11 2 3
0 5 0 1
0 7 5 4
1
end_operator
begin_operator
place a_bot cucumber bowl
0
3
0 8 1 0
0 2 -1 0
0 6 0 5
1
end_operator
begin_operator
place a_bot cucumber bowl
0
3
0 8 2 0
0 2 -1 0
0 6 0 5
1
end_operator
begin_operator
place a_bot cucumber bowl
0
3
0 8 3 0
0 2 -1 0
0 6 0 5
1
end_operator
begin_operator
place a_bot cucumber counter
0
3
0 8 0 1
0 2 -1 0
0 6 0 5
1
end_operator
begin_operator
place a_bot cucumber counter
0
3
0 8 2 1
0 2 -1 0
0 6 0 5
1
end_operator
begin_operator
place a_bot cucumber counter
0
3
0 8 3 1
0 2 -1 0
0 6 0 5
1
end_operator
begin_operator
place a_bot cucumber cutting_board
0
3
0 8 0 2
0 2 -1 0
0 6 0 5
1
end_operator
begin_operator
place a_bot cucumber cutting_board
0
3
0 8 1 2
0 2 -1 0
0 6 0 5
1
end_operator
begin_operator
place a_bot cucumber cutting_board
0
3
0 8 3 2
0 2 -1 0
0 6 0 5
1
end_operator
begin_operator
place a_bot cucumber2 bowl
0
3
0 9 1 0
0 3 -1 0
0 6 1 5
1
end_operator
begin_operator
place a_bot cucumber2 bowl
0
3
0 9 2 0
0 3 -1 0
0 6 1 5
1
end_operator
begin_operator
place a_bot cucumber2 bowl
0
3
0 9 3 0
0 3 -1 0
0 6 1 5
1
end_operator
begin_operator
place a_bot cucumber2 counter
0
3
0 9 0 1
0 3 -1 0
0 6 1 5
1
end_operator
begin_operator
place a_bot cucumber2 counter
0
3
0 9 2 1
0 3 -1 0
0 6 1 5
1
end_operator
begin_operator
place a_bot cucumber2 counter
0
3
0 9 3 1
0 3 -1 0
0 6 1 5
1
end_operator
begin_operator
place a_bot cucumber2 cutting_board
0
3
0 9 0 2
0 3 -1 0
0 6 1 5
1
end_operator
begin_operator
place a_bot cucumber2 cutting_board
0
3
0 9 1 2
0 3 -1 0
0 6 1 5
1
end_operator
begin_operator
place a_bot cucumber2 cutting_board
0
3
0 9 3 2
0 3 -1 0
0 6 1 5
1
end_operator
begin_operator
place a_bot knife bowl
0
3
0 0 1 0
0 1 -1 0
0 6 2 5
1
end_operator
begin_operator
place a_bot knife bowl
0
3
0 0 2 0
0 1 -1 0
0 6 2 5
1
end_operator
begin_operator
place a_bot knife bowl
0
3
0 0 3 0
0 1 -1 0
0 6 2 5
1
end_operator
begin_operator
place a_bot knife counter
0
3
0 0 0 1
0 1 -1 0
0 6 2 5
1
end_operator
begin_operator
place a_bot knife counter
0
3
0 0 2 1
0 1 -1 0
0 6 2 5
1
end_operator
begin_operator
place a_bot knife counter
0
3
0 0 3 1
0 1 -1 0
0 6 2 5
1
end_operator
begin_operator
place a_bot knife cutting_board
0
3
0 0 0 2
0 1 -1 0
0 6 2 5
1
end_operator
begin_operator
place a_bot knife cutting_board
0
3
0 0 1 2
0 1 -1 0
0 6 2 5
1
end_operator
begin_operator
place a_bot knife cutting_board
0
3
0 0 3 2
0 1 -1 0
0 6 2 5
1
end_operator
begin_operator
place a_bot tomato bowl
0
3
0 10 1 0
0 4 -1 0
0 6 3 5
1
end_operator
begin_operator
place a_bot tomato bowl
0
3
0 10 2 0
0 4 -1 0
0 6 3 5
1
end_operator
begin_operator
place a_bot tomato bowl
0
3
0 10 3 0
0 4 -1 0
0 6 3 5
1
end_operator
begin_operator
place a_bot tomato counter
0
3
0 10 0 1
0 4 -1 0
0 6 3 5
1
end_operator
begin_operator
place a_bot tomato counter
0
3
0 10 2 1
0 4 -1 0
0 6 3 5
1
end_operator
begin_operator
place a_bot tomato counter
0
3
0 10 3 1
0 4 -1 0
0 6 3 5
1
end_operator
begin_operator
place a_bot tomato cutting_board
0
3
0 10 0 2
0 4 -1 0
0 6 3 5
1
end_operator
begin_operator
place a_bot tomato cutting_board
0
3
0 10 1 2
0 4 -1 0
0 6 3 5
1
end_operator
begin_operator
place a_bot tomato cutting_board
0
3
0 10 3 2
0 4 -1 0
0 6 3 5
1
end_operator
begin_operator
place a_bot tomato2 bowl
0
3
0 11 1 0
0 5 -1 0
0 6 4 5
1
end_operator
begin_operator
place a_bot tomato2 bowl
0
3
0 11 2 0
0 5 -1 0
0 6 4 5
1
end_operator
begin_operator
place a_bot tomato2 bowl
0
3
0 11 3 0
0 5 -1 0
0 6 4 5
1
end_operator
begin_operator
place a_bot tomato2 counter
0
3
0 11 0 1
0 5 -1 0
0 6 4 5
1
end_operator
begin_operator
place a_bot tomato2 counter
0
3
0 11 2 1
0 5 -1 0
0 6 4 5
1
end_operator
begin_operator
place a_bot tomato2 counter
0
3
0 11 3 1
0 5 -1 0
0 6 4 5
1
end_operator
begin_operator
place a_bot tomato2 cutting_board
0
3
0 11 0 2
0 5 -1 0
0 6 4 5
1
end_operator
begin_operator
place a_bot tomato2 cutting_board
0
3
0 11 1 2
0 5 -1 0
0 6 4 5
1
end_operator
begin_operator
place a_bot tomato2 cutting_board
0
3
0 11 3 2
0 5 -1 0
0 6 4 5
1
end_operator
begin_operator
place b_bot cucumber bowl
0
3
0 8 1 0
0 2 -1 0
0 7 0 5
1
end_operator
begin_operator
place b_bot cucumber bowl
0
3
0 8 2 0
0 2 -1 0
0 7 0 5
1
end_operator
begin_operator
place b_bot cucumber bowl
0
3
0 8 3 0
0 2 -1 0
0 7 0 5
1
end_operator
begin_operator
place b_bot cucumber counter
0
3
0 8 0 1
0 2 -1 0
0 7 0 5
1
end_operator
begin_operator
place b_bot cucumber counter
0
3
0 8 2 1
0 2 -1 0
0 7 0 5
1
end_operator
begin_operator
place b_bot cucumber counter
0
3
0 8 3 1
0 2 -1 0
0 7 0 5
1
end_operator
begin_operator
place b_bot cucumber cutting_board
0
3
0 8 0 2
0 2 -1 0
0 7 0 5
1
end_operator
begin_operator
place b_bot cucumber cutting_board
0
3
0 8 1 2
0 2 -1 0
0 7 0 5
1
end_operator
begin_operator
place b_bot cucumber cutting_board
0
3
0 8 3 2
0 2 -1 0
0 7 0 5
1
end_operator
begin_operator
place b_bot cucumber2 bowl
0
3
0 9 1 0
0 3 -1 0
0 7 1 5
1
end_operator
begin_operator
place b_bot cucumber2 bowl
0
3
0 9 2 0
0 3 -1 0
0 7 1 5
1
end_operator
begin_operator
place b_bot cucumber2 bowl
0
3
0 9 3 0
0 3 -1 0
0 7 1 5
1
end_operator
begin_operator
place b_bot cucumber2 counter
0
3
0 9 0 1
0 3 -1 0
0 7 1 5
1
end_operator
begin_operator
place b_bot cucumber2 counter
0
3
0 9 2 1
0 3 -1 0
0 7 1 5
1
end_operator
begin_operator
place b_bot cucumber2 counter
0
3
0 9 3 1
0 3 -1 0
0 7 1 5
1
end_operator
begin_operator
place b_bot cucumber2 cutting_board
0
3
0 9 0 2
0 3 -1 0
0 7 1 5
1
end_operator
begin_operator
place b_bot cucumber2 cutting_board
0
3
0 9 1 2
0 3 -1 0
0 7 1 5
1
end_operator
begin_operator
place b_bot cucumber2 cutting_board
0
3
0 9 3 2
0 3 -1 0
0 7 1 5
1
end_operator
begin_operator
place b_bot knife bowl
0
3
0 0 1 0
0 1 -1 0
0 7 2 5
1
end_operator
begin_operator
place b_bot knife bowl
0
3
0 0 2 0
0 1 -1 0
0 7 2 5
1
end_operator
begin_operator
place b_bot knife bowl
0
3
0 0 3 0
0 1 -1 0
0 7 2 5
1
end_operator
begin_operator
place b_bot knife counter
0
3
0 0 0 1
0 1 -1 0
0 7 2 5
1
end_operator
begin_operator
place b_bot knife counter
0
3
0 0 2 1
0 1 -1 0
0 7 2 5
1
end_operator
begin_operator
place b_bot knife counter
0
3
0 0 3 1
0 1 -1 0
0 7 2 5
1
end_operator
begin_operator
place b_bot knife cutting_board
0
3
0 0 0 2
0 1 -1 0
0 7 2 5
1
end_operator
begin_operator
place b_bot knife cutting_board
0
3
0 0 1 2
0 1 -1 0
0 7 2 5
1
end_operator
begin_operator
place b_bot knife cutting_board
0
3
0 0 3 2
0 1 -1 0
0 7 2 5
1
end_operator
begin_operator
place b_bot tomato bowl
0
3
0 10 1 0
0 4 -1 0
0 7 3 5
1
end_operator
begin_operator
place b_bot tomato bowl
0
3
0 10 2 0
0 4 -1 0
0 7 3 5
1
end_operator
begin_operator
place b_bot tomato bowl
0
3
0 10 3 0
0 4 -1 0
0 7 3 5
1
end_operator
begin_operator
place b_bot tomato counter
0
3
0 10 0 1
0 4 -1 0
0 7 3 5
1
end_operator
begin_operator
place b_bot tomato counter
0
3
0 10 2 1
0 4 -1 0
0 7 3 5
1
end_operator
begin_operator
place b_bot tomato counter
0
3
0 10 3 1
0 4 -1 0
0 7 3 5
1
end_operator
begin_operator
place b_bot tomato cutting_board
0
3
0 10 0 2
0 4 -1 0
0 7 3 5
1
end_operator
begin_operator
place b_bot tomato cutting_board
0
3
0 10 1 2
0 4 -1 0
0 7 3 5
1
end_operator
begin_operator
place b_bot tomato cutting_board
0
3
0 10 3 2
0 4 -1 0
0 7 3 5
1
end_operator
begin_operator
place b_bot tomato2 bowl
0
3
0 11 1 0
0 5 -1 0
0 7 4 5
1
end_operator
begin_operator
place b_bot tomato2 bowl
0
3
0 11 2 0
0 5 -1 0
0 7 4 5
1
end_operator
begin_operator
place b_bot tomato2 bowl
0
3
0 11 3 0
0 5 -1 0
0 7 4 5
1
end_operator
begin_operator
place b_bot tomato2 counter
0
3
0 11 0 1
0 5 -1 0
0 7 4 5
1
end_operator
begin_operator
place b_bot tomato2 counter
0
3
0 11 2 1
0 5 -1 0
0 7 4 5
1
end_operator
begin_operator
place b_bot tomato2 counter
0
3
0 11 3 1
0 5 -1 0
0 7 4 5
1
end_operator
begin_operator
place b_bot tomato2 cutting_board
0
3
0 11 0 2
0 5 -1 0
0 7 4 5
1
end_operator
begin_operator
place b_bot tomato2 cutting_board
0
3
0 11 1 2
0 5 -1 0
0 7 4 5
1
end_operator
begin_operator
place b_bot tomato2 cutting_board
0
3
0 11 3 2
0 5 -1 0
0 7 4 5
1
end_operator
begin_operator
slice a_bot cucumber knife cutting_board
2
8 2
6 2
1
0 13 1 0
1
end_operator
begin_operator
slice a_bot cucumber2 knife cutting_board
2
9 2
6 2
1
0 12 1 0
1
end_operator
begin_operator
slice a_bot tomato knife cutting_board
2
10 2
6 2
1
0 15 1 0
1
end_operator
begin_operator
slice a_bot tomato2 knife cutting_board
2
11 2
6 2
1
0 14 1 0
1
end_operator
begin_operator
slice b_bot cucumber knife cutting_board
2
8 2
7 2
1
0 13 1 0
1
end_operator
begin_operator
slice b_bot cucumber2 knife cutting_board
2
9 2
7 2
1
0 12 1 0
1
end_operator
begin_operator
slice b_bot tomato knife cutting_board
2
10 2
7 2
1
0 15 1 0
1
end_operator
begin_operator
slice b_bot tomato2 knife cutting_board
2
11 2
7 2
1
0 14 1 0
1
end_operator
0
