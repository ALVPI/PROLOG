suma([],0).
suma([X|Y],R):-
    suma(Y,X1),
    R is X + X1.