move(X,Y,4,Y) :- X < 4.
move(X,Y,X,3) :- Y < 3.
move(X,Y,0,Y) :- X > 0.
move(X,Y,X,0) :- Y > 0.

move(X,Y,4,Y2) :-
    X+Y >= 4,
    Y2 is Y-(4-X).

move(X,Y,X2,3) :-
    X+Y >= 3,
    X2 is X-(3-Y).

solution :-
    move(0,0,X1,Y1),
    move(X1,Y1,X2,Y2),
    move(X2,Y2,X3,Y3),
    move(X3,Y3,X4,Y4),
    move(X4,Y4,4,2),
    write((4,2)).
    

