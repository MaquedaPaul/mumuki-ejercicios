module Eercicio13 where

{-
Escribir el tipo de la siguiente función:

f1 x m = ((>0).m) x
Nota: no definir la función, sólo escribir su tipo en la forma

f1 :: ....
-}
f1 :: (Ord a,Num a) => ta -> (ta->a) -> Bool
f1 x m = ((>0).m) x

