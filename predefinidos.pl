/*
 Fichero con los predicados predefinidos para el examen de FIA
 -isLista
 -invertir
 -length
 -append 
 -contains 
 
*/

% isLista 
% Predicado que nos permite saber si el predicado predefinido es una lista o no

isLista([]).
isLista([X|Y]).

% invertir
% Predicado que nos permite darle la vuelta a los elementos de una lista
% [1,2,3,4]->[4,3,2,1]
invertir([],[]):-!.
invertir(L,R):-
    invAux(L,[],R).

invAux([],R,R).
invAux([H|T],R1,R):-
    invAux(T,[H|R1],R).

% length
% Predicado que nos retornará la longitud de la lista
% [1,2,3,4]-> 4
len([],0).
len([H|T],R):-
    len(T,R1),
    R is R1+1.


% append 
% Predicado predefinido que nos permite concatenar dos listas
% [1,2,3],[4,5,6]-> [1,2,3,4,5,6].

concatenar(L1,L2,R):-
    invertir(L1,R1),
    conAux(R1,L2,R).
conAux([],R,R).
conAux([H|T],L2,R):-
    conAux(T,[H|L2],R).

% contains
% Predicado predefinido que nos permite saber si un elemento
% está contenido o no en la lista.
contenido([E|T],E):- !.
contenido([H|T],E):-
    contenido(T,E).