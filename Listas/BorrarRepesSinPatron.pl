/*5. Eliminar los elementos repetidos de una lista. No se pueden usar predicados predefinidos. (No es necesario
que el orden de los elementos en la lista de salida sea el de los ejemplos con tal de que se eliminen los
repetidos correctamente).
?- borrar_repes([a,b,a,1,2,1,c,a,d],R).
R = [a, b, 1, 2, c, d] 
*/
% Predicado principal para borrar elementos repetidos
borrar_repes([], []):- !.  % Caso base: lista vacía
borrar_repes([X], [X]):- !.  % Caso base: lista con un solo elemento

% Caso cuando el elemento está en el resto de la lista
borrar_repes([H|T], R) :-
    in_lista(T, H),  % Verifica si H está en el resto de la lista T
    !,
    borrar_repes(T, R).  % Si está, no lo agrega a R y continúa con T

% Caso cuando el elemento no está en el resto de la lista
borrar_repes([H|T], [H|R]):- borrar_repes(T,R),!.
 

% Predicado para verificar si un elemento está en la lista
in_lista([X|_], X):- !.  % Caso base: el elemento es la cabeza de la lista
in_lista([_|T], H) :-  % Caso recursivo: verificar en la cola de la lista
    in_lista(T, H).