module Eercicio2 where

{-
Definir la funcion aplicar, que recibe una tupla de 2 funciones, y un entero, y devuelve como resultado una tupla con el resultado de aplicar el elemento a cada una de la funciones.

-}
--aplicar :: ((x->x),(z->z))->Int->(x,y)
aplicar :: (x->z,x->y) -> x -> (z,y)
aplicar (x,y) entero = (x entero, y entero) 
