% Caso Base: cuando ya hemos terminado con la lista 
% Aglutinamos la segunda lista con la lista resultado.
concatenar([],L2,L2).
% Caso recursivo
% Vamos a ir metiendo la cabeza de la lista en la lista solución
% y llamamos recursivamente con la Cola de la lista.
concatenar([H|T],L2,[H|R]):-
    concatenar(T,L2,R).