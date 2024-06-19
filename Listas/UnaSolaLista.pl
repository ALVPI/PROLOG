/*Realizar un programa al que se le pasa una lista que puede contener a su vez listas, y devuelve una sola lista,
es decir, solo están los elementos de las listas pero no estas con corte.*/

% Predicado base
unalista(L,R):-
    % Llamada a la función recursiva
    aux(L,[],R1),
    % Invertimos la lista porque nos la devuelven del revés
    invertir(R1,[],R),!.

% Caso base de la función auxiliar
% Cuando tenemos lista vacía, ya hemos recorrido todo
% Unificamos la lista con ela que vamos a retornar
aux([],R1,R1).

% Caso recursivo 1: 
aux([X|T],L,R):-
    % si el primer elemento no es una lista lo metemos en
    % la lista parcial 
    \+ list(X),
    aux(T,[X|L],R).
% Caso recursivo 2: Si son unas listas
% Llamamos a aux
aux([X|T],L,R):-
    aux(X,L,L1),  % Mete la cabecera de la sublista X en L1
    aux(T,L1,R).  % Con lista donde hemos metido la cabecera
    % metemos el resultado de lo que queda

% Predicado para invertir una lista 
invertir([],R,R).
invertir([X|T],L,R):-
    invertir(T,[X|L],R).

%Comprobamos si es una lista
list([]).
list([_|_]).