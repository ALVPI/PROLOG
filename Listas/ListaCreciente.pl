% Vamos a determinar si una lista es creciente o no 
% Si la lista está vacía diremos que es creciente.
creciente([]).
% cuando tengamos solo un elemento, va a ser mayor que el resto 
creciente([_]). 

creciente([X|[Y|T]]):-
    X =< Y , % es \leq porque si dos elementos son iguales están ordenados
    creciente([Y|T]).
