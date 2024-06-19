palindromo(X) :-
    name(X, ASCII),
    invertir(ASCII, I),
    name(Y, I),
    X = Y.

% Invertir una lista
invertir(Lista, ListaInvertida) :-
    invertir_aux(Lista, [], ListaInvertida).

% Caso base: cuando la lista está vacía, el resultado es el acumulador
invertir_aux([], Acumulador, Acumulador).

% Caso recursivo: toma el primer elemento y lo agrega al acumulador
invertir_aux([Cabeza|Cola], Acumulador, ListaInvertida) :-
    invertir_aux(Cola, [Cabeza|Acumulador], ListaInvertida).
