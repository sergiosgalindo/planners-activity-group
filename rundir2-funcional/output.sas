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
2
Atom at(roverobot, l1)
NegatedAtom at(roverobot, l1)
end_variable
begin_variable
var1
-1
2
Atom at(roverobot, l2)
NegatedAtom at(roverobot, l2)
end_variable
begin_variable
var2
-1
2
Atom at(roverobot, l3)
NegatedAtom at(roverobot, l3)
end_variable
begin_variable
var3
-1
2
Atom at(roverobot, l4)
NegatedAtom at(roverobot, l4)
end_variable
begin_variable
var4
-1
2
Atom at(roverobot, l5)
NegatedAtom at(roverobot, l5)
end_variable
begin_variable
var8
-1
2
Atom there_a_mineral(greenrock, l2)
NegatedAtom there_a_mineral(greenrock, l2)
end_variable
begin_variable
var9
-1
2
Atom rover_is_charged(greenrock, roverobot)
NegatedAtom rover_is_charged(greenrock, roverobot)
end_variable
begin_variable
var10
-1
2
Atom there_a_mineral(greenrock, l5)
NegatedAtom there_a_mineral(greenrock, l5)
end_variable
begin_variable
var5
-1
2
Atom there_a_mineral(yellowrock, l1)
NegatedAtom there_a_mineral(yellowrock, l1)
end_variable
begin_variable
var6
-1
2
Atom rover_is_charged(yellowrock, roverobot)
NegatedAtom rover_is_charged(yellowrock, roverobot)
end_variable
begin_variable
var7
-1
2
Atom there_a_mineral(yellowrock, l5)
NegatedAtom there_a_mineral(yellowrock, l5)
end_variable
16
begin_mutex_group
2
0 0
1 0
end_mutex_group
begin_mutex_group
2
0 0
2 0
end_mutex_group
begin_mutex_group
2
0 0
3 0
end_mutex_group
begin_mutex_group
2
0 0
4 0
end_mutex_group
begin_mutex_group
2
1 0
2 0
end_mutex_group
begin_mutex_group
2
1 0
3 0
end_mutex_group
begin_mutex_group
2
1 0
4 0
end_mutex_group
begin_mutex_group
2
2 0
3 0
end_mutex_group
begin_mutex_group
2
2 0
4 0
end_mutex_group
begin_mutex_group
2
3 0
4 0
end_mutex_group
begin_mutex_group
2
5 0
6 0
end_mutex_group
begin_mutex_group
2
5 0
7 0
end_mutex_group
begin_mutex_group
2
6 0
7 0
end_mutex_group
begin_mutex_group
2
8 0
9 0
end_mutex_group
begin_mutex_group
2
8 0
10 0
end_mutex_group
begin_mutex_group
2
9 0
10 0
end_mutex_group
begin_state
1
1
1
0
1
0
1
1
0
1
1
end_state
begin_goal
3
4 0
7 0
10 0
end_goal
14
begin_operator
mineral_discharge roverobot l5 l4 greenrock lab1
1
4 0
2
0 6 0 1
0 7 -1 0
1
end_operator
begin_operator
mineral_discharge roverobot l5 l4 yellowrock lab1
1
4 0
2
0 9 0 1
0 10 -1 0
1
end_operator
begin_operator
mineral_found roverobot l1 l3 yellowrock emp
1
0 0
2
0 9 1 0
0 8 0 1
1
end_operator
begin_operator
mineral_found roverobot l2 l4 greenrock emp
1
1 0
2
0 6 1 0
0 5 0 1
1
end_operator
begin_operator
mineral_found roverobot l5 l4 greenrock emp
1
4 0
2
0 6 1 0
0 7 0 1
1
end_operator
begin_operator
mineral_found roverobot l5 l4 yellowrock emp
1
4 0
2
0 9 1 0
0 10 0 1
1
end_operator
begin_operator
move_to_other_location roverobot l1 l3
0
2
0 0 0 1
0 2 -1 0
1
end_operator
begin_operator
move_to_other_location roverobot l2 l4
0
2
0 1 0 1
0 3 -1 0
1
end_operator
begin_operator
move_to_other_location roverobot l3 l1
0
2
0 0 -1 0
0 2 0 1
1
end_operator
begin_operator
move_to_other_location roverobot l3 l2
0
2
0 1 -1 0
0 2 0 1
1
end_operator
begin_operator
move_to_other_location roverobot l3 l4
0
2
0 2 0 1
0 3 -1 0
1
end_operator
begin_operator
move_to_other_location roverobot l4 l3
0
2
0 2 -1 0
0 3 0 1
1
end_operator
begin_operator
move_to_other_location roverobot l4 l5
0
2
0 3 0 1
0 4 -1 0
1
end_operator
begin_operator
move_to_other_location roverobot l5 l4
0
2
0 3 -1 0
0 4 0 1
1
end_operator
0
begin_SG
switch 0
check 0
switch 1
check 1
6
check 0
check 0
switch 8
check 0
switch 9
check 0
check 0
check 1
2
check 0
check 0
check 0
check 0
switch 1
check 0
switch 2
check 1
7
check 0
check 0
switch 5
check 0
switch 6
check 0
check 0
check 1
3
check 0
check 0
check 0
check 0
switch 2
check 0
check 3
8
9
10
check 0
switch 3
check 0
check 2
11
12
check 0
switch 4
check 0
switch 8
check 1
13
check 0
check 0
switch 9
check 0
check 1
1
switch 10
check 0
check 1
5
check 0
check 0
switch 6
check 0
check 1
0
switch 7
check 0
check 1
4
check 0
check 0
check 0
check 0
check 0
end_SG
begin_DTG
1
1
6
0
1
0
8
1
2 0
end_DTG
begin_DTG
1
1
7
0
1
0
9
1
2 0
end_DTG
begin_DTG
1
1
8
0
2
0
6
1
0 0
0
11
1
3 0
end_DTG
begin_DTG
1
1
11
0
3
0
7
1
1 0
0
10
1
2 0
0
13
1
4 0
end_DTG
begin_DTG
1
1
13
0
1
0
12
1
3 0
end_DTG
begin_DTG
1
1
3
2
1 0
6 1
0
end_DTG
begin_DTG
1
1
0
1
4 0
2
0
3
2
1 0
5 0
0
4
2
4 0
7 0
end_DTG
begin_DTG
1
1
4
2
4 0
6 1
1
0
0
2
4 0
6 0
end_DTG
begin_DTG
1
1
2
2
0 0
9 1
0
end_DTG
begin_DTG
1
1
1
1
4 0
2
0
2
2
0 0
8 0
0
5
2
4 0
10 0
end_DTG
begin_DTG
1
1
5
2
4 0
9 1
1
0
1
2
4 0
9 0
end_DTG
begin_CG
3
2 1
8 1
9 1
3
3 1
5 1
6 1
3
0 1
1 1
3 1
2
2 1
4 1
5
3 1
9 2
10 2
6 2
7 2
1
6 1
2
5 1
7 2
1
6 1
1
9 1
2
8 1
10 2
1
9 1
end_CG
