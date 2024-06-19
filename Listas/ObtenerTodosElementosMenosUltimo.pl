primero([_],[]).
primero([H|T],[H|R]):-
    primero(T,R).
