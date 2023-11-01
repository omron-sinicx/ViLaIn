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
Atom free(a_bot)
NegatedAtom free(a_bot)
end_variable
begin_variable
var3
-1
2
Atom free(b_bot)
NegatedAtom free(b_bot)
end_variable
begin_variable
var4
-1
2
Atom available(cucumber)
NegatedAtom available(cucumber)
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
6
Atom at(cucumber, bowl)
Atom at(cucumber, counter)
Atom at(cucumber, counter2)
Atom at(cucumber, cutting_board)
Atom carry(a_bot, cucumber)
Atom carry(b_bot, cucumber)
end_variable
begin_variable
var7
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
var8
-1
2
Atom is-sliced(cucumber)
Atom is-whole(cucumber)
end_variable
begin_variable
var9
-1
2
Atom is-sliced(tomato)
Atom is-whole(tomato)
end_variable
5
begin_mutex_group
3
6 4
6 5
4 0
end_mutex_group
begin_mutex_group
3
0 4
0 5
1 0
end_mutex_group
begin_mutex_group
3
7 4
7 5
5 0
end_mutex_group
begin_mutex_group
4
6 4
0 4
7 4
2 0
end_mutex_group
begin_mutex_group
4
6 5
0 5
7 5
3 0
end_mutex_group
begin_state
5
1
0
1
0
0
1
1
1
1
end_state
begin_goal
4
6 0
7 0
8 0
9 0
end_goal
52
begin_operator
pick a_bot cucumber bowl
0
3
0 6 0 4
0 4 0 1
0 2 0 1
1
end_operator
begin_operator
pick a_bot cucumber counter
0
3
0 6 1 4
0 4 0 1
0 2 0 1
1
end_operator
begin_operator
pick a_bot cucumber counter2
0
3
0 6 2 4
0 4 0 1
0 2 0 1
1
end_operator
begin_operator
pick a_bot cucumber cutting_board
0
3
0 6 3 4
0 4 0 1
0 2 0 1
1
end_operator
begin_operator
pick a_bot knife bowl
0
3
0 0 0 4
0 1 0 1
0 2 0 1
1
end_operator
begin_operator
pick a_bot knife counter
0
3
0 0 1 4
0 1 0 1
0 2 0 1
1
end_operator
begin_operator
pick a_bot knife counter2
0
3
0 0 2 4
0 1 0 1
0 2 0 1
1
end_operator
begin_operator
pick a_bot knife cutting_board
0
3
0 0 3 4
0 1 0 1
0 2 0 1
1
end_operator
begin_operator
pick a_bot tomato bowl
0
3
0 7 0 4
0 5 0 1
0 2 0 1
1
end_operator
begin_operator
pick a_bot tomato counter
0
3
0 7 1 4
0 5 0 1
0 2 0 1
1
end_operator
begin_operator
pick a_bot tomato counter2
0
3
0 7 2 4
0 5 0 1
0 2 0 1
1
end_operator
begin_operator
pick a_bot tomato cutting_board
0
3
0 7 3 4
0 5 0 1
0 2 0 1
1
end_operator
begin_operator
pick b_bot cucumber bowl
0
3
0 6 0 5
0 4 0 1
0 3 0 1
1
end_operator
begin_operator
pick b_bot cucumber counter
0
3
0 6 1 5
0 4 0 1
0 3 0 1
1
end_operator
begin_operator
pick b_bot cucumber counter2
0
3
0 6 2 5
0 4 0 1
0 3 0 1
1
end_operator
begin_operator
pick b_bot cucumber cutting_board
0
3
0 6 3 5
0 4 0 1
0 3 0 1
1
end_operator
begin_operator
pick b_bot knife bowl
0
3
0 0 0 5
0 1 0 1
0 3 0 1
1
end_operator
begin_operator
pick b_bot knife counter
0
3
0 0 1 5
0 1 0 1
0 3 0 1
1
end_operator
begin_operator
pick b_bot knife counter2
0
3
0 0 2 5
0 1 0 1
0 3 0 1
1
end_operator
begin_operator
pick b_bot knife cutting_board
0
3
0 0 3 5
0 1 0 1
0 3 0 1
1
end_operator
begin_operator
pick b_bot tomato bowl
0
3
0 7 0 5
0 5 0 1
0 3 0 1
1
end_operator
begin_operator
pick b_bot tomato counter
0
3
0 7 1 5
0 5 0 1
0 3 0 1
1
end_operator
begin_operator
pick b_bot tomato counter2
0
3
0 7 2 5
0 5 0 1
0 3 0 1
1
end_operator
begin_operator
pick b_bot tomato cutting_board
0
3
0 7 3 5
0 5 0 1
0 3 0 1
1
end_operator
begin_operator
place a_bot cucumber bowl
0
3
0 6 4 0
0 4 -1 0
0 2 1 0
1
end_operator
begin_operator
place a_bot cucumber counter
0
3
0 6 4 1
0 4 -1 0
0 2 1 0
1
end_operator
begin_operator
place a_bot cucumber counter2
0
3
0 6 4 2
0 4 -1 0
0 2 1 0
1
end_operator
begin_operator
place a_bot cucumber cutting_board
0
3
0 6 4 3
0 4 -1 0
0 2 1 0
1
end_operator
begin_operator
place a_bot knife bowl
0
3
0 0 4 0
0 1 -1 0
0 2 1 0
1
end_operator
begin_operator
place a_bot knife counter
0
3
0 0 4 1
0 1 -1 0
0 2 1 0
1
end_operator
begin_operator
place a_bot knife counter2
0
3
0 0 4 2
0 1 -1 0
0 2 1 0
1
end_operator
begin_operator
place a_bot knife cutting_board
0
3
0 0 4 3
0 1 -1 0
0 2 1 0
1
end_operator
begin_operator
place a_bot tomato bowl
0
3
0 7 4 0
0 5 -1 0
0 2 1 0
1
end_operator
begin_operator
place a_bot tomato counter
0
3
0 7 4 1
0 5 -1 0
0 2 1 0
1
end_operator
begin_operator
place a_bot tomato counter2
0
3
0 7 4 2
0 5 -1 0
0 2 1 0
1
end_operator
begin_operator
place a_bot tomato cutting_board
0
3
0 7 4 3
0 5 -1 0
0 2 1 0
1
end_operator
begin_operator
place b_bot cucumber bowl
0
3
0 6 5 0
0 4 -1 0
0 3 1 0
1
end_operator
begin_operator
place b_bot cucumber counter
0
3
0 6 5 1
0 4 -1 0
0 3 1 0
1
end_operator
begin_operator
place b_bot cucumber counter2
0
3
0 6 5 2
0 4 -1 0
0 3 1 0
1
end_operator
begin_operator
place b_bot cucumber cutting_board
0
3
0 6 5 3
0 4 -1 0
0 3 1 0
1
end_operator
begin_operator
place b_bot knife bowl
0
3
0 0 5 0
0 1 -1 0
0 3 1 0
1
end_operator
begin_operator
place b_bot knife counter
0
3
0 0 5 1
0 1 -1 0
0 3 1 0
1
end_operator
begin_operator
place b_bot knife counter2
0
3
0 0 5 2
0 1 -1 0
0 3 1 0
1
end_operator
begin_operator
place b_bot knife cutting_board
0
3
0 0 5 3
0 1 -1 0
0 3 1 0
1
end_operator
begin_operator
place b_bot tomato bowl
0
3
0 7 5 0
0 5 -1 0
0 3 1 0
1
end_operator
begin_operator
place b_bot tomato counter
0
3
0 7 5 1
0 5 -1 0
0 3 1 0
1
end_operator
begin_operator
place b_bot tomato counter2
0
3
0 7 5 2
0 5 -1 0
0 3 1 0
1
end_operator
begin_operator
place b_bot tomato cutting_board
0
3
0 7 5 3
0 5 -1 0
0 3 1 0
1
end_operator
begin_operator
slice a_bot cucumber knife cutting_board
2
6 3
0 4
1
0 8 1 0
1
end_operator
begin_operator
slice a_bot tomato knife cutting_board
2
0 4
7 3
1
0 9 1 0
1
end_operator
begin_operator
slice b_bot cucumber knife cutting_board
2
6 3
0 5
1
0 8 1 0
1
end_operator
begin_operator
slice b_bot tomato knife cutting_board
2
0 5
7 3
1
0 9 1 0
1
end_operator
0
