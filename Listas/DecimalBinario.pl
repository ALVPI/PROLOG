/*
2. Transformar un número decimal a binario en forma de lista.
?- dec_bin(0,L).
L = [].
?- dec_bin(1,L).
L = [1].
?- dec_bin(22,L).
L = [1, 0, 1, 1, 0].
*/  
dec_bin([],[]).
dec_bin(N,L):-
    dec_binAux(N,[],L),!.
dec_binAux(0,L,L).
dec_binAux(N,L1,L):-
    N >0,
    Res is N mod 2,
    N1 is N // 2,
    dec_binAux(N1,[Res|L1],L).