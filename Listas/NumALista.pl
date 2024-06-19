/*
5. Transformar un número natural en una lista de sus cifras como elementos.
?- cifras_lista(1234,R).
R = [1, 2, 3, 4].
?- cifras_lista(1034,R).
R = [1, 0, 3, 4].
?- cifras_lista(1,R).
R = [1].
?- cifras_lista(0,R).
R = [0].
*/
numALista(N,L):-
   numAListaAux(N,[],L),! .

numAListaAux(0,L,L).
numAListaAux(N,LA,L):-
    N > 0,
    X is N mod 10,
    N1 is N // 10,
    numAListaAux(N1,[X|LA],L).