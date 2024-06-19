% Vamos a verificar si una lista es decreciente o no

decreciente([]).
decreciente([X]).
decreciente([X|[Y|T]]):-
    X >= Y,
    decreciente([Y|T]).