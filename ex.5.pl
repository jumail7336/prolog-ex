in_room(monkey).
in_room(chair).
in_room(banana).

clever(monkey).
can_climb(monkey,chair).
tall(chair).

can_move(monkey,chair,banana).

can_reach(X,Y) :-
    clever(X),
    can_move(X,chair,Y),
    can_climb(X,chair).