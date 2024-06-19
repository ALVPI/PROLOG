
/*
Rotar una lista N posiciones hacia la derecha.
?- rotar_derecha_posiciones([],3,R).
R = [].
?- rotar_derecha_posiciones([1],3,R).
R = [1].
?- rotar_derecha_posiciones([1,2,3],3,R).
R = [1, 2, 3].
?- rotar_derecha_posiciones([1,2,3,4,5],3,R).
R = [3, 4, 5, 1, 2].
*/

rotarIndice([],_,[]).
rotarIndice([X],_,[X]).
rotarIndice(L,I,R):-
    rotarAUX(L,I,[],R1,R).
    
rotarAUX(R1,0,L1,R1,R):-
    append(R1,L1,R).
rotarAUX([X|T],I,L1,R1,R):-
    I > 0,
    I1 is I - 1,
    rotarAUX(T,I1,[X|L1],R1,R).