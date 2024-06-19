/*
4. Decir si una lista tiene todos sus elementos iguales.
?-todos_iguales([5,3,4,2,1]).
false.
?-todos_iguales([5,5,5]).
true.    
*/
iguales([]).
iguales([H|T]):-
    X is H,
    igualesAux(X,T),!.
igualesAux(_,[]).
igualesAux(X,[X|T]):-
    igualesAux(X,T).