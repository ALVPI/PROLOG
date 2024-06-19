% Vamos a intentar insertar un elemento en mitad de la lista 

% Vamos a sacar la longitud de la lista:

% Caso base: cuando la lista está vacía.
longitud([],0).
% Caso recursivo:
longitud([H|T],L):-
    longitud(T,L1),
    L is 1 + L1.

% Una vez que tenemos la longitud
insertarMitad(E,L,R):-
    longitud(L,Lon),
    M is Lon//2,
    dividirListas(L,M,L1,L2),
    append(L1, [E|L2], R).

% dividirListas lo que hará será crear dos listas.

dividirListas(L,M,L1,L2):-
    dividirListasAux(L,M,L1,L2,0).

dividirListasAux([H|T],L,M,[H|L1],L2,C):-
    % L es la lista
    % M es la mitad
    % L1 es primera mitad de la lista
    % L2 es la segunda mitad de la lista
    % C es el contador de elementos que hemos sacado
    C < M,
    C1 is C + 1,
    dividirListasAux(T,M,L1,L2,C1).

dividirListasAux(L2,M,[],L2,M).

