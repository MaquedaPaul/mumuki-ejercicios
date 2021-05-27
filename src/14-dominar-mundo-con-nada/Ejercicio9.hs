module Eercicio9 where

{-
Utilizando la función foldl1, desarrollar la función maximoSegun que dada una función y una lista devuelve el elemento de la lista que hace máxima la función.

 maximoSegun id [1,2,3,4,5]
5
 maximoSegun negate [1,2,3,4,5]
1
 maximoSegun length ["hola","paradigmas", "como","estas"]
"paradigmas"
-}
{-
foldl1 first applies the function to the first two elements of the list, then takes the result and applies the function to it and the third element, then takes the result and applies the function to it and the fourth element, then to result and fifth element, then sixth element, and so on until the list ends.
Step 1:  g 4 3 = 4*2 - 3 = 5
Step 2:  g 5 2 = 5*2 - 2 = 8
Step 3:  g 8 1 = 8*2 - 1 = 15
-}


maximoSegun :: Ord a => (a->a) -> [a] -> a
maximoSegun funcion lista = foldl1 (mayorSegun funcion) lista
mayorSegun :: Ord a => (a->a) -> a -> a -> a
mayorSegun funcion a1 a2 | funcion a1>funcion a2 = a1
                         |otherwise = a2

{-
Notación point-free
maximoSegun funcion = foldl1 (mayorSegun funcion)
mayorSegun funcion a1 a2 | funcion a1>funcion a2 = a1
                         |otherwise = a2
                         -}


