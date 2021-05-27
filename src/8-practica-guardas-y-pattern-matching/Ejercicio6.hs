module Eercicio6 where

{-
Definir la función esMayorDeEdad, que dada una tupla de 2 elementos (nombre, edad) me devuelva True si tiene al menos 21 años y False en caso contrario. Por Ej:.

Main> esMayorDeEdad("juan", 18) 
False
Nota: Definir la función utilizando aplicación parcial y composición.
-}

esMayorDeEdad :: (String,Int)->Bool
esMayorDeEdad (nombre,edad) = (>=21) .snd $(nombre,edad)
