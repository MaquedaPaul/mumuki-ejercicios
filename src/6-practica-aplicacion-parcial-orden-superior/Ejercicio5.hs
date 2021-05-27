module Eercicio5 where

{-
La función sumaEsPar que está en el editor tiene dos parámetros y nos dice si su suma es par. Por ejemplo:

 sumaEsPar 4 8 
True
Modificala para que su definición use aplicación parcial y composición.
-}
sumaEsPar :: Int -> Int -> Bool
sumaEsPar x y = even (x + y)


sumaEsParPointFree :: Int -> Int -> Bool
sumaEsParPointFree x = even . (+x) 


sumaEsParComposicion :: Int -> Int -> Bool
sumaEsParComposicion x y = even . (+x) $ y 

