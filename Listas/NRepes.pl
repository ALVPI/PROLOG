% Programa para contar las repeticions de un elemento.

repes(X,L,R):-
    repesAux(X,L,0,R).

% El caso base cuando ya solo nos queda la lista vacía.

repesAux(_,[],R,R).

% El primero elemento coincide
repesAux(X,[X|T],Cont,R):-
    C1 is Cont + 1,
    repesAux(X,T,C1,R).

% El primero elemento no coincide.
repesAux(X,[_|T],Cont,R):-  
    repesAux(X,T,Cont,R).
    