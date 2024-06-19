/*Realizar otro programa PROLOG para ordenar ascendentemente una lista de números naturales mediante el
método de la burbuja. Para ello, se planteará una relación llamada burbuja(Lista, Ordenada) entre dos
argumentos: la Lista por ordenar y la ya Ordenada respectivamente. La salida debería ser de este tipo:
?- burbuja([1, 7, 4, 5, 3, 2, 1, 3, 0], X).
X = [0, 1, 1, 2, 3, 3, 4, 5, 7] ;
false.
?- burbuja([1], X).
X = [1] ;
false.
?- burbuja([], X).
X = [].*/
burbuja([],[]).
burbuja(L,R):-
    aux(L,[],R1),
    invertir(R1,[],R),!.
aux([X],R,[X|R]).
aux([],R,R).
aux([X,Y|T],L,R):-
    X =< Y,
    aux([Y|T],[X|L],R).

aux([X,Y|T],L,R):-
    aux([X|T],[Y|L],R).

invertir([],R,R).
invertir([H|T],L,R):-
    invertir(T,[H|L],R).