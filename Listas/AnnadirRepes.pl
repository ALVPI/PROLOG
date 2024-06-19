/*
8. Construir una lista con un elemento repetido N veces.
?- repetir(5,7,R).
R = [5, 5, 5, 5, 5, 5, 5].
?- repetir(a,8,R).
R = [a, a, a, a, a, a, a, a].
?- repetir(b,0,R).
R = [].
?- repetir(c,1,R).
R = [c].
*/

nrepes(X,R,L):-
    nrepesAux(X,R,[],L).

nrepesAux(_,0,L,L).
nrepesAux(X,R,L1,L):-
    R >0,
    R1 is R - 1,
    nrepesAux(X,R1,[X|L1],L).
