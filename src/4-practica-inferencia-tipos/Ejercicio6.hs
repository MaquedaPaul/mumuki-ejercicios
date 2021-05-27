module Eercicio6 where

{-
Escribí el tipo de la función longitudPar de forma que las siguientes consultas funcionen:

longitudPar "Hola"
longitudPar "adiós"
-}
longitudPar :: String -> Bool
longitudPar = even.length 
