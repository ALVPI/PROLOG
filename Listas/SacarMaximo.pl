% Vamos a sacar el maximo de una lista

maximo([X],X).

maximo([H|T],R):-
    maximoAux(H,T,R).

% Caso base:
maximoAux(M,[],M).

% El 1er elemento no es mas grande que el segundo. actualizamos el maximo
maximoAux(H,[X|T],R):-
    X > H,
    maximoAux(X,T,R).

% El 1er elemento es mas grande que el segundo
maximoAux(H,[X|T],R):-
    X =< H,
    maximoAux(H,T,R).




