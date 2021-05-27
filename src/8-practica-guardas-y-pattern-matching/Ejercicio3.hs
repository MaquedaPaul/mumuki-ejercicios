module Eercicio3 where

{-
Definir la función cuentaBizarra, que recibe un par y:

si el primer elemento es mayor al segundo devuelve la suma
si el segundo le lleva más de 10 al primero devuelve la resta 2do – 1ro
en otro caso, devuelve el producto.
-}

cuentaBizarra :: (Int,Int) -> Int
cuentaBizarra (x,y) 
                 |(x>y) = x+y
                 |(y-x>=10) = y-x
                 |otherwise = x*y


--separaryComparar :: (Int,Int)->(a->a) -> Bool
--separaryComparar :: (x,y) -> (a -> a) ->Bool
--separaryComparar :: (Int,Int) -> (Int->Int->Bool)->Bool
--separaryComparar (x,y) condicion = condicion (fst(x,y)) (snd(x,y))




--separaryComparar
--  :: Ord a => ((a -> a -> Bool) -> t1 -> t2, t1) -> p -> t2