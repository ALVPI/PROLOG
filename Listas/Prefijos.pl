/*
Ejercicio Nº 14.-
Obtener todos los prefijos de una lista o saber si una lista es prefijo de otra.
a) Programarlo usando append.
b) Programarlo sin usar append.
?- prefijo([1,2],[1,2,3,4]).
true.
?- prefijo([1,2],[1,2]).
true.
?- prefijo([1,2,3],[1,2,3,4]).
true.
?- prefijo([1],[1,2]).
true.
?- prefijo([],[1,2]).
true.
?- prefijo(L,[1,2,3,4]).
L = [] ;
L = [1] ;
L = [1, 2] ;
L = [1, 2, 3] ;
L = [1, 2, 3, 4] ;
false.
Ejercicio Nº 1
*/
prefijo([],[]).
prefijo([],T).
prefijo(T,[]).
prefijo([H|T],[H|Y]):-
    prefijo(T,Y).