% Se desa sumar todo los elmentos de una lista
% Sin emplear predicados predefinidos
% sumarL(1,[2,3,4],5,6,[7,8,9],R).

sum(L, R) :-
    con(L,L1),
    suma(L1, R).

% Predicado para sumar todos los elementos de una lista plana
suma([], 0).
suma([H|T], R) :-
    suma(T, R1),
    R is H + R1.

% Predicado para aplanar una lista de listas en una lista plana
con([], []).
con([H|T], [H|R]) :-
    \+ isLista(H),
    con(T, R).
con([H|T], R) :-
    con(H, R1),
    con(T, R2),
    concatener(R1, R2, R).

% Predicado auxiliar para concatenar dos listas
concatener([], L, L).
concatener([H|T], L, [H|R]) :-
    concatener(T, L, R).

% Predicado auxiliar para verificar si un término es una lista
isLista([]).
isLista([_|_]).