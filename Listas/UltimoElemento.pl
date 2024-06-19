% Casos base

ultimo(X,[X]).

ultimo(X,[H|T]):-
    ultimo(X,T).

    