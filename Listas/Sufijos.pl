sufijo(X,[H|X]).
sufijo(X,[H|T]):-
    sufijo(X,T).