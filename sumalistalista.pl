% Se desa sumar todo los elmentos de una lista
% Sin emplear predicados predefinidos
% sumarL(1,[2,3,4],5,6,[7,8,9],R).
% Caso base del ejercicio
% Llegamos a una lista vacía.
sumarL([],0).
% Caso recursivo.
% Si Head no es una lista.
sumarL([H|T],R):-
% Verifico que head no sea una lista.
    \+ isLista(H),
% Llamo a la función con el resto de la lista.
    sumarL(T,R1),
% Sumo el resultado de las llamadas recursivas a mi función.
    R is R1+H,
    !.
% Caso recursivo si Head sí es una lista.
sumarL([H|T],R):-
% Verifico que head es una lista.
    isLista(H),
% Sumo la lista que es la cabecera.
    sumarL(H,R1),
% Sumo el resto de los elementos de la lista.
    sumarL(T,R2),
    R is R1+R2.
    
concatenar(L1,L2,R):-
    invertir(L1,R1),
    conAux(R1,L2,R).
conAux([],R,R).
conAux([H|T],L2,R):-
    conAux(T,[H|L2],R).

invertir([],[]).
invertir(L,R):-
    invertirAux(L,[],R).
invertirAux([],R,R).

invertirAux([H|T],L,R):-
    invertirAux(T,[H|L],R).

isLista([]).
isLista([_|_]).
