sublista([],[]).
% Si el primer elemento coincide.
sublista([H|T],[H|R]):-
    sublista(T,R).
% Si el primero elemento no coincide.
sublista(L,[_|R]):-
    sublista(L,R).
    