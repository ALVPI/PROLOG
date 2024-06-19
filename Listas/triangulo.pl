/* 7. En la figura podemos ver un triángulo. Los extremos son siempre
1 y los demás números se calculan mediante la suma de los dos
elementos que tienen justo encima.
Hacer un programa en Prolog al que se le pase la fila del triángulo
sabiendo que empezamos a contar desde arriba y desde 1, y devuelva
en una lista todos los números de esa fila.
NOTA: Las consultas que deberíamos hacer son de la siguiente forma,
aunque no limitadas a estas:
?- fila(0,L).
false.
?- fila(-3,L).
false.
?- fila(1,L).
L = [1] ;
false.
?- fila(4,L).
L = [1, 3, 3, 1] ;
false.
*/
% El triángulo de pascal es recursivo, necesitamos las dos primeras filas
% para poder sacar el resto.
fila(1,[1]):-!.
fila(N,[1|R]):-
    N > 1,
    N1 is N - 1,
    %Sacamos la fila anterior
    fila(N1,L1),
    suma2en2(L1,R).

%caso base
suma2en2([X],[X]):-!.
suma2en2([X,Y|T],[Z|R]):-
    Z is X + Y,
    suma2en2([Y|T],R).


    

