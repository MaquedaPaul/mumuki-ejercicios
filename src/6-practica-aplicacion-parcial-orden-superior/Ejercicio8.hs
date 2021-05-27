module Eercicio8 where

{-
Definí la función mejor, que recibe dos funciones y un número, y devuelve el resultado de la función que dé un valor más alto.

 mejor cuadrado triple 1
3

 mejor cuadrado triple 5
25
-}
mejor :: (Int -> Int) -> (Int -> Int) -> Int -> Int
mejor funcion1 funcion2 numero = max (funcion1 numero) (funcion2 numero)