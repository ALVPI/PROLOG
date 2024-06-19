/*
Rotar una lista una posición hacia la derecha
?- rotar_derecha([1,2,3,4,5],R).
R = [5, 1, 2, 3, 4] ;
false.
?- rotar_derecha([],R).
R = [] ;
false.
?- rotar_derecha([1],R).
R = [1] ;
false.
*/
% Caso base: lista vacía
rotar_derecha([], []).

% Caso base: lista con un solo elemento
rotar_derecha([X], [X]).

% Caso general: obtenemos el último elemento y el resto de la lista, luego reconstruimos la lista
rotar_derecha(L, [H|T]) :-
    rotarAUX(L, H, T),!.

% Extraer el último elemento y el resto de la lista
rotarAUX([X], X, []).

rotarAUX([Hs|T], H, [Hs|Ts]) :-
    rotarAUX(T, H, Ts).

    

