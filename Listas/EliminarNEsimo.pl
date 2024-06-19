
eliminarNEsimo(L,P,R):-
    % L es la lista 
    % P es la posición a borrar 
    % R es la lista resultado
    eliminarNEsimoAux(L,P,R,0).

% Caso base: La lista está vacía 
eliminarNEsimoAux([],_,[],_).

% Cuando ya hemos eliminado esa posición
eliminarNEsimoAux([_|T],P,T,P).

eliminarNEsimoAux([H|T],P,[H|R],C):-
    % C es el contador de posiciones que llevamos recorridas de la lista
    C < P,
    C1 is C + 1,
    eliminarNEsimoAux(T,P,R,C1).

