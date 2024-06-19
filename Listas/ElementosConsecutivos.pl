% Caso base
consecut([X,Y|_],X,Y).
% si no coinciden:

% consecut([_,_|T],X,Y).
consecut([_|T],X,Y):-
    consecut(T,X,Y).