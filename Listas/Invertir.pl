% Predicado principal que inicializa el acumulador
invertir(L, R) :-
    invertir_aux(L, [], R).

% Caso base: Cuando la lista está vacía, el resultado es el acumulador
invertir_aux([], Acc, Acc).

% Caso recursivo: Toma el primer elemento y lo agrega al acumulador
invertir_aux([H|T], Acc, R) :-
    invertir_aux(T, [H|Acc], R).
