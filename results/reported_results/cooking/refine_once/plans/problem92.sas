begin_version
3
end_version
begin_metric
0
end_metric
13
begin_variable
var0
-1
6
Atom at(knife, bowl)
Atom at(knife, counter)
Atom at(knife, counter2)
Atom at(knife, cutting_board)
Atom carry(a_bot, knife)
Atom carry(b_bot, knife)
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
Atom available(carrot)
NegatedAtom available(carrot)
end_variable
begin_variable
var3
-1
2
Atom available(carrot2)
NegatedAtom available(carrot2)
end_variable
begin_variable
var4
-1
2
Atom free(a_bot)
NegatedAtom free(a_bot)
end_variable
begin_variable
var5
-1
2
Atom available(tomato)
NegatedAtom available(tomato)
end_variable
begin_variable
var6
-1
2
Atom free(b_bot)
NegatedAtom free(b_bot)
end_variable
begin_variable
var7
-1
6
Atom at(carrot, bowl)
Atom at(carrot, counter)
Atom at(carrot, counter2)
Atom at(carrot, cutting_board)
Atom carry(a_bot, carrot)
Atom carry(b_bot, carrot)
end_variable
begin_variable
var8
-1
6
Atom at(carrot2, bowl)
Atom at(carrot2, counter)
Atom at(carrot2, counter2)
Atom at(carrot2, cutting_board)
Atom carry(a_bot, carrot2)
Atom carry(b_bot, carrot2)
end_variable
begin_variable
var9
-1
6
Atom at(tomato, bowl)
Atom at(tomato, counter)
Atom at(tomato, counter2)
Atom at(tomato, cutting_board)
Atom carry(a_bot, tomato)
Atom carry(b_bot, tomato)
end_variable
begin_variable
var10
-1
2
Atom is-sliced(tomato)
Atom is-whole(tomato)
end_variable
begin_variable
var11
-1
2
Atom is-sliced(carrot2)
Atom is-whole(carrot2)
end_variable
begin_variable
var12
-1
2
Atom is-sliced(carrot)
Atom is-whole(carrot)
end_variable
6
begin_mutex_group
3
7 4
7 5
2 0
end_mutex_group
begin_mutex_group
3
8 4
8 5
3 0
end_mutex_group
begin_mutex_group
3
0 4
0 5
1 0
end_mutex_group
begin_mutex_group
3
9 4
9 5
5 0
end_mutex_group
begin_mutex_group
5
7 4
8 4
0 4
9 4
4 0
end_mutex_group
begin_mutex_group
5
7 5
8 5
0 5
9 5
6 0
end_mutex_group
begin_state
5
1
0
0
0
0
1
1
2
1
1
1
1
end_state
begin_goal
6
7 0
8 0
9 0
10 0
11 0
12 0
end_goal
70
begin_operator
pick a_bot carrot bowl
0
3
0 7 0 4
0 2 0 1
0 4 0 1
1
end_operator
begin_operator
pick a_bot carrot counter
0
3
0 7 1 4
0 2 0 1
0 4 0 1
1
end_operator
begin_operator
pick a_bot carrot counter2
0
3
0 7 2 4
0 2 0 1
0 4 0 1
1
end_operator
begin_operator
pick a_bot carrot cutting_board
0
3
0 7 3 4
0 2 0 1
0 4 0 1
1
end_operator
begin_operator
pick a_bot carrot2 bowl
0
3
0 8 0 4
0 3 0 1
0 4 0 1
1
end_operator
begin_operator
pick a_bot carrot2 counter
0
3
0 8 1 4
0 3 0 1
0 4 0 1
1
end_operator
begin_operator
pick a_bot carrot2 counter2
0
3
0 8 2 4
0 3 0 1
0 4 0 1
1
end_operator
begin_operator
pick a_bot carrot2 cutting_board
0
3
0 8 3 4
0 3 0 1
0 4 0 1
1
end_operator
begin_operator
pick a_bot knife bowl
0
3
0 0 0 4
0 1 0 1
0 4 0 1
1
end_operator
begin_operator
pick a_bot knife counter
0
3
0 0 1 4
0 1 0 1
0 4 0 1
1
end_operator
begin_operator
pick a_bot knife counter2
0
3
0 0 2 4
0 1 0 1
0 4 0 1
1
end_operator
begin_operator
pick a_bot knife cutting_board
0
3
0 0 3 4
0 1 0 1
0 4 0 1
1
end_operator
begin_operator
pick a_bot tomato bowl
0
3
0 9 0 4
0 5 0 1
0 4 0 1
1
end_operator
begin_operator
pick a_bot tomato counter
0
3
0 9 1 4
0 5 0 1
0 4 0 1
1
end_operator
begin_operator
pick a_bot tomato counter2
0
3
0 9 2 4
0 5 0 1
0 4 0 1
1
end_operator
begin_operator
pick a_bot tomato cutting_board
0
3
0 9 3 4
0 5 0 1
0 4 0 1
1
end_operator
begin_operator
pick b_bot carrot bowl
0
3
0 7 0 5
0 2 0 1
0 6 0 1
1
end_operator
begin_operator
pick b_bot carrot counter
0
3
0 7 1 5
0 2 0 1
0 6 0 1
1
end_operator
begin_operator
pick b_bot carrot counter2
0
3
0 7 2 5
0 2 0 1
0 6 0 1
1
end_operator
begin_operator
pick b_bot carrot cutting_board
0
3
0 7 3 5
0 2 0 1
0 6 0 1
1
end_operator
begin_operator
pick b_bot carrot2 bowl
0
3
0 8 0 5
0 3 0 1
0 6 0 1
1
end_operator
begin_operator
pick b_bot carrot2 counter
0
3
0 8 1 5
0 3 0 1
0 6 0 1
1
end_operator
begin_operator
pick b_bot carrot2 counter2
0
3
0 8 2 5
0 3 0 1
0 6 0 1
1
end_operator
begin_operator
pick b_bot carrot2 cutting_board
0
3
0 8 3 5
0 3 0 1
0 6 0 1
1
end_operator
begin_operator
pick b_bot knife bowl
0
3
0 0 0 5
0 1 0 1
0 6 0 1
1
end_operator
begin_operator
pick b_bot knife counter
0
3
0 0 1 5
0 1 0 1
0 6 0 1
1
end_operator
begin_operator
pick b_bot knife counter2
0
3
0 0 2 5
0 1 0 1
0 6 0 1
1
end_operator
begin_operator
pick b_bot knife cutting_board
0
3
0 0 3 5
0 1 0 1
0 6 0 1
1
end_operator
begin_operator
pick b_bot tomato bowl
0
3
0 9 0 5
0 5 0 1
0 6 0 1
1
end_operator
begin_operator
pick b_bot tomato counter
0
3
0 9 1 5
0 5 0 1
0 6 0 1
1
end_operator
begin_operator
pick b_bot tomato counter2
0
3
0 9 2 5
0 5 0 1
0 6 0 1
1
end_operator
begin_operator
pick b_bot tomato cutting_board
0
3
0 9 3 5
0 5 0 1
0 6 0 1
1
end_operator
begin_operator
place a_bot carrot bowl
0
3
0 7 4 0
0 2 -1 0
0 4 1 0
1
end_operator
begin_operator
place a_bot carrot counter
0
3
0 7 4 1
0 2 -1 0
0 4 1 0
1
end_operator
begin_operator
place a_bot carrot counter2
0
3
0 7 4 2
0 2 -1 0
0 4 1 0
1
end_operator
begin_operator
place a_bot carrot cutting_board
0
3
0 7 4 3
0 2 -1 0
0 4 1 0
1
end_operator
begin_operator
place a_bot carrot2 bowl
0
3
0 8 4 0
0 3 -1 0
0 4 1 0
1
end_operator
begin_operator
place a_bot carrot2 counter
0
3
0 8 4 1
0 3 -1 0
0 4 1 0
1
end_operator
begin_operator
place a_bot carrot2 counter2
0
3
0 8 4 2
0 3 -1 0
0 4 1 0
1
end_operator
begin_operator
place a_bot carrot2 cutting_board
0
3
0 8 4 3
0 3 -1 0
0 4 1 0
1
end_operator
begin_operator
place a_bot knife bowl
0
3
0 0 4 0
0 1 -1 0
0 4 1 0
1
end_operator
begin_operator
place a_bot knife counter
0
3
0 0 4 1
0 1 -1 0
0 4 1 0
1
end_operator
begin_operator
place a_bot knife counter2
0
3
0 0 4 2
0 1 -1 0
0 4 1 0
1
end_operator
begin_operator
place a_bot knife cutting_board
0
3
0 0 4 3
0 1 -1 0
0 4 1 0
1
end_operator
begin_operator
place a_bot tomato bowl
0
3
0 9 4 0
0 5 -1 0
0 4 1 0
1
end_operator
begin_operator
place a_bot tomato counter
0
3
0 9 4 1
0 5 -1 0
0 4 1 0
1
end_operator
begin_operator
place a_bot tomato counter2
0
3
0 9 4 2
0 5 -1 0
0 4 1 0
1
end_operator
begin_operator
place a_bot tomato cutting_board
0
3
0 9 4 3
0 5 -1 0
0 4 1 0
1
end_operator
begin_operator
place b_bot carrot bowl
0
3
0 7 5 0
0 2 -1 0
0 6 1 0
1
end_operator
begin_operator
place b_bot carrot counter
0
3
0 7 5 1
0 2 -1 0
0 6 1 0
1
end_operator
begin_operator
place b_bot carrot counter2
0
3
0 7 5 2
0 2 -1 0
0 6 1 0
1
end_operator
begin_operator
place b_bot carrot cutting_board
0
3
0 7 5 3
0 2 -1 0
0 6 1 0
1
end_operator
begin_operator
place b_bot carrot2 bowl
0
3
0 8 5 0
0 3 -1 0
0 6 1 0
1
end_operator
begin_operator
place b_bot carrot2 counter
0
3
0 8 5 1
0 3 -1 0
0 6 1 0
1
end_operator
begin_operator
place b_bot carrot2 counter2
0
3
0 8 5 2
0 3 -1 0
0 6 1 0
1
end_operator
begin_operator
place b_bot carrot2 cutting_board
0
3
0 8 5 3
0 3 -1 0
0 6 1 0
1
end_operator
begin_operator
place b_bot knife bowl
0
3
0 0 5 0
0 1 -1 0
0 6 1 0
1
end_operator
begin_operator
place b_bot knife counter
0
3
0 0 5 1
0 1 -1 0
0 6 1 0
1
end_operator
begin_operator
place b_bot knife counter2
0
3
0 0 5 2
0 1 -1 0
0 6 1 0
1
end_operator
begin_operator
place b_bot knife cutting_board
0
3
0 0 5 3
0 1 -1 0
0 6 1 0
1
end_operator
begin_operator
place b_bot tomato bowl
0
3
0 9 5 0
0 5 -1 0
0 6 1 0
1
end_operator
begin_operator
place b_bot tomato counter
0
3
0 9 5 1
0 5 -1 0
0 6 1 0
1
end_operator
begin_operator
place b_bot tomato counter2
0
3
0 9 5 2
0 5 -1 0
0 6 1 0
1
end_operator
begin_operator
place b_bot tomato cutting_board
0
3
0 9 5 3
0 5 -1 0
0 6 1 0
1
end_operator
begin_operator
slice a_bot carrot knife cutting_board
2
7 3
0 4
1
0 12 1 0
1
end_operator
begin_operator
slice a_bot carrot2 knife cutting_board
2
8 3
0 4
1
0 11 1 0
1
end_operator
begin_operator
slice a_bot tomato knife cutting_board
2
0 4
9 3
1
0 10 1 0
1
end_operator
begin_operator
slice b_bot carrot knife cutting_board
2
7 3
0 5
1
0 12 1 0
1
end_operator
begin_operator
slice b_bot carrot2 knife cutting_board
2
8 3
0 5
1
0 11 1 0
1
end_operator
begin_operator
slice b_bot tomato knife cutting_board
2
0 5
9 3
1
0 10 1 0
1
end_operator
0
