/*
    Ejercicio Nº 4.-
Borrar un elemento de una lista (ir borrando una aparición cada vez).
?- borrar(a,[a,b,c,1,a,d,a],L).
L = [b, c, 1, a, d, a] ;
L = [a, b, c, 1, d, a] ;
L = [a, b, c, 1, a, d] ;
false.
*/
% Caso base: cuando la lista no tiene elementos
borrar(_,[],[]).
% Si justo es el primer elemento el que tenemos que borrar
borrar(X,[X|T],T).
% Caso recursivo: 
borrar(X,[H|T],[H|R]):-
    borrar(X,T,R).