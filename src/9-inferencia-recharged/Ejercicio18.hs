module Eercicio13 where

{-
Escribí y explicitá el tipo de una función iniciales, que tome un string formado por varias palabras, y devuelva otro formado por las iniciales.

Ejemplo:

 iniciales "paradigmas de programación"
"pdp"
Ah, tené en cuenta que si la palabra es de un sólo carácter, no tiene que ser considerada. Por ejemplo:

 iniciales "programación orientada a objetos"
"poo"
Resolverla usando composición, aplicación parcial y orden superior.
-}


iniciales :: String -> String
iniciales frase |length frase /= 1 = foldr (analizarCaso) "" (words frase)
                |otherwise = ""
                
                
analizarCaso :: String -> String -> String
analizarCaso palabra 
                    |(/=1).length $ palabra = ((++).take 1) $ palabra
                    |otherwise = (++) $ ""

