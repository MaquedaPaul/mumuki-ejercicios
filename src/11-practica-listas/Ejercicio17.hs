module Eercicio17 where

{-
Escribí y explicitá el tipo de una función rotar, que tome una lista y ponga su cabeza (es decir, su primer elemento) al final:

 rotar "hola" 
"olah"
 rotar [2, 3, 4] 
[3, 4, 2]
-}

rotar :: [a] -> [a]
rotar [] = []
rotar (x:xs) = xs ++ [x]
