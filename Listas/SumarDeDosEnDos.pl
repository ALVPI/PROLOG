sumar2en2(L,R):-
    sumar2en2Aux(L,R).

% Caso Base
sumar2en2Aux([],[]).

% Si solo tenemos un elemento
sumar2en2Aux([H],[H]).

sumar2en2Aux([H, Y|T],[Suma|R]):-
    Suma is H + Y,
    sumar2en2Aux(T,R).