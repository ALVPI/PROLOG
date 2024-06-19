/*
Ejercicio sobre not
Escribir el siguiente programa que usa not. Efectúar las consultas que se indican.
Observar qué se obtiene . Razonar el resultado. Puedes servirte del comando trace.
?- bueno(X), razonable(X).
?-razonable(X), bueno(X).
?- not(caro(francisco)).
*/
bueno(juanluis).
bueno(francisco).
caro(juanluis).
razonable(Restaurante):-not(caro(Restaurante)).