module Ejercicio7 where
calcular :: (Int,Int)->(Int,Int)
calcular (x,y)
                |separarCondiciones (even x, not . even $ y) = (2*x,y+1)
                |even . fst $ (x,y) = (2*x,y)
                |not . even . snd $ (x,y) = (x,y+1)
                |otherwise = (x,y)

separarCondiciones :: (Bool,Bool) -> Bool
separarCondiciones (x,y) = fst (x,y) && snd (x,y)