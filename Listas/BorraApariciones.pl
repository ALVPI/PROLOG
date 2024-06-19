% Borra todas las apariciones de un elemento en una lista
borra(_,[],[]).
%Si el primer elemento es el que tienes que eliminar
borra(E,[E|T],R):-
    % E es el elemento a eliminar
    borra(E,T,R).  
%si el primero elemento no es el que tienes que eliminar  
borra(E,[H|T],[H|R]):-
    E \= H,
    borra(E,T,R).
