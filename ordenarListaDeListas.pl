/*
En este ejercio debemos ordenar de mayor a menor una lista
que puede o no estar formado por sublistas
[1,[3,4],2]-> [1,2,3,4]
*/
% Caso base1: Si la lista está vacía retornamos lista vacía
ordenar([],[]).
ordenar(L,R):-
    unaSolaLista(L,R1),
    burbuja(R1,R).
%--------------------------
burbuja(R1,R1):- ordenada(R1).
burbuja(L,Lordenada):-
% Llamamos a permuta
    permuta(L,L1),
% Comprobamos si la lista no esta ordenada
% Volvemos a hacer permutas
    burbuja(L1,Lordenada).
%------------------------
% Permuta nos colocará de 
% menor a mayor 3 elementos
% de la lista 
permuta([],[]).
permuta([X,Y|R],[Y, X|R]):-
    X>Y.
permuta([X,Y|R],[X|R1]):-
    X=<Y,
    permuta([Y|R],R1).

%--------------------------
% Predicado que nos devulve true
% cuando la lista ya está ordenada
% caso base 1: Lista vacía
ordenada([]).
% caso base 2: Lista de un solo elemento
ordenada([_]).
% Caso recursivo comprobamos primero<segundo
ordenada([X,Y|T]):- 
    X=<Y,
    ordenada([Y|T]).

%--------------------------
% Caso base si la lista es vacía 
% Devolvemo lista vacía porque no quedan mas elementos
% que agregar por lo tanto metemos lista vacía
unaSolaLista([],[]).
% Caso Recursivo 1: Cabecera NO es una lista
% Concatenamos el elemento con el resultado
unaSolaLista([H|T],[H|R]):-
% Verificamos que H No es una lista
    \+ esLista(H), 
    unaSolaLista(T,R).
    %!. Corte para que solo haya una respuesta
    % No se usa a no ser que te lo pida el ejercicio.
% Si el primer elemento en una lista
unaSolaLista([H|T],R):-
% Verificamos que h es una lista
    esLista(H),
    unaSolaLista(H,R1),
    unaSolaLista(T,R2),
% Concatenamos los resultados parciales
    concatenar(R1,R2,R).
%---------------------------
concatenar([],R,R).
concatenar([H|T],R2,[H|R]):-
    concatenar(T,R2,R).
%---------------------------
esLista([]).
esLista([_|_]).