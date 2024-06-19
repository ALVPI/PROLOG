longitud([],0).

%Vamos a hacer la recursividad
longitud([_|Y],X):-
    longitud(Y,X1),
    X is X1+1.
