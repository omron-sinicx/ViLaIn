begin_version
3
end_version
begin_metric
0
end_metric
7
begin_variable
var0
-1
5
Atom at(knife, bowl)
Atom at(knife, counter)
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
Atom available(tomato)
NegatedAtom available(tomato)
end_variable
begin_variable
var5
-1
5
Atom at(tomato, bowl)
Atom at(tomato, counter)
Atom at(tomato, cutting_board)
Atom carry(a_bot, tomato)
Atom carry(b_bot, tomato)
end_variable
begin_variable
var6
-1
2
Atom is-sliced(tomato)
Atom is-whole(tomato)
end_variable
4
begin_mutex_group
3
0 3
0 4
1 0
end_mutex_group
begin_mutex_group
3
5 3
5 4
4 0
end_mutex_group
begin_mutex_group
3
0 3
5 3
2 0
end_mutex_group
begin_mutex_group
3
0 4
5 4
3 0
end_mutex_group
begin_state
4
1
0
1
0
1
1
end_state
begin_goal
2
5 0
6 0
end_goal
26
begin_operator
pick a_bot knife bowl
0
3
0 0 0 3
0 1 0 1
0 2 0 1
1
end_operator
begin_operator
pick a_bot knife counter
0
3
0 0 1 3
0 1 0 1
0 2 0 1
1
end_operator
begin_operator
pick a_bot knife cutting_board
0
3
0 0 2 3
0 1 0 1
0 2 0 1
1
end_operator
begin_operator
pick a_bot tomato bowl
0
3
0 5 0 3
0 4 0 1
0 2 0 1
1
end_operator
begin_operator
pick a_bot tomato counter
0
3
0 5 1 3
0 4 0 1
0 2 0 1
1
end_operator
begin_operator
pick a_bot tomato cutting_board
0
3
0 5 2 3
0 4 0 1
0 2 0 1
1
end_operator
begin_operator
pick b_bot knife bowl
0
3
0 0 0 4
0 1 0 1
0 3 0 1
1
end_operator
begin_operator
pick b_bot knife counter
0
3
0 0 1 4
0 1 0 1
0 3 0 1
1
end_operator
begin_operator
pick b_bot knife cutting_board
0
3
0 0 2 4
0 1 0 1
0 3 0 1
1
end_operator
begin_operator
pick b_bot tomato bowl
0
3
0 5 0 4
0 4 0 1
0 3 0 1
1
end_operator
begin_operator
pick b_bot tomato counter
0
3
0 5 1 4
0 4 0 1
0 3 0 1
1
end_operator
begin_operator
pick b_bot tomato cutting_board
0
3
0 5 2 4
0 4 0 1
0 3 0 1
1
end_operator
begin_operator
place a_bot knife bowl
0
3
0 0 3 0
0 1 -1 0
0 2 1 0
1
end_operator
begin_operator
place a_bot knife counter
0
3
0 0 3 1
0 1 -1 0
0 2 1 0
1
end_operator
begin_operator
place a_bot knife cutting_board
0
3
0 0 3 2
0 1 -1 0
0 2 1 0
1
end_operator
begin_operator
place a_bot tomato bowl
0
3
0 5 3 0
0 4 -1 0
0 2 1 0
1
end_operator
begin_operator
place a_bot tomato counter
0
3
0 5 3 1
0 4 -1 0
0 2 1 0
1
end_operator
begin_operator
place a_bot tomato cutting_board
0
3
0 5 3 2
0 4 -1 0
0 2 1 0
1
end_operator
begin_operator
place b_bot knife bowl
0
3
0 0 4 0
0 1 -1 0
0 3 1 0
1
end_operator
begin_operator
place b_bot knife counter
0
3
0 0 4 1
0 1 -1 0
0 3 1 0
1
end_operator
begin_operator
place b_bot knife cutting_board
0
3
0 0 4 2
0 1 -1 0
0 3 1 0
1
end_operator
begin_operator
place b_bot tomato bowl
0
3
0 5 4 0
0 4 -1 0
0 3 1 0
1
end_operator
begin_operator
place b_bot tomato counter
0
3
0 5 4 1
0 4 -1 0
0 3 1 0
1
end_operator
begin_operator
place b_bot tomato cutting_board
0
3
0 5 4 2
0 4 -1 0
0 3 1 0
1
end_operator
begin_operator
slice a_bot tomato knife cutting_board
2
0 3
5 2
1
0 6 1 0
1
end_operator
begin_operator
slice b_bot tomato knife cutting_board
2
0 4
5 2
1
0 6 1 0
1
end_operator
0
