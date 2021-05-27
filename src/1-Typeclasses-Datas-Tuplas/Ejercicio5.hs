module Eercicio5 where

{-
Tenemos dos parciales con dos recuperatorios, y lo representamos mediante un par de pares ((parc1,parc2),(recup1,recup2)).

Se pide desarrollar una función notasFinales que diga cuales fueron las notas finales del primer y segundo parcial. Por ejemplo:

Main> notasFinales ((2,7),(6,-1))
(6,7)
Main> notasFinales ((2,2),(6,2))
(6,2)
Main> notasFinales ((8,7),(-1,-1))
(8,7)
Considerar que:

si una persona no rindió un recuperatorio, entonces ponemos un "-1" en el lugar correspondiente.
con la codificación elegida, siempre la mejor nota es el máximo entre nota del parcial y nota del recuperatorio.
vale recuperar para promocionar
También definir la función recuperoDeGusto que dado el par de pares que representa a un alumno, nos dice si el alumno, pudiendo promocionar con los parciales (o sea sin recup.), igual rindió al menos un recuperatorio.

Nota: Resolverlo sin descomponer las tuplas mediante pattern matching; utilizar fst y snd en su lugar.

Nota2: Asumir que ya existe una función promociono que dada una tupla de notas nos indica si promocionó. Usarla sin definirla
-}
promociono :: (Int,Int) -> Bool
promociono (nota1,nota2) = fst(nota1,nota2) + snd(nota1,nota2) >= 14 && nota1>=6 && nota2>=6

notasFinales ((parc1,parc2),(recup1,recup2)) = (max parc1 recup1,max parc2 recup2)

{-
Lo siguiente es pattern matching:
recuperoDeGusto ((parc1,parc2),(recup1,recup2)) = promociono (parc1,parc2) && (recup1 /= -1 || recup2 || -1)
-}


recuperoDeGusto ((parc1,parc2),(recup1,recup2)) = (promociono (fst((parc1,parc2),(recup1,recup2)))) && (recuperoPrimer ((parc1,parc2),(recup1,recup2)) || recuperoSegundo ((parc1,parc2),(recup1,recup2)))


recuperoPrimer ((parc1,parc2),(recup1,recup2)) = ((snd.snd) $ ((parc1,parc2),(recup1,recup2))) /= -1
recuperoSegundo ((parc1,parc2),(recup1,recup2)) = ((fst.snd) $ ((parc1,parc2),(recup1,recup2))) /= -1

