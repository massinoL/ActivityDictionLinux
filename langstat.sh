#!/bin/bash
#declaration d'une variable globale qui est le nombre de mot de dico.txt
NOMBREDEMOTS='323577'

#fonction calcule le nombre de lettres
nombreLettreSurUneLigne ( )
{
let "av=0"
#for i in `seq 1 5`;
#for ((i=0 ; 5 - $i ; i++))
#do
  oc=`sed -n $i,2p vide | grep -o $l | wc -l`
let "av +=oc"
#done
#echo $av
echo $oc
#echo $i
}
echo 'donner la lettre de votre choix'
read l
read i
nombreLettreSurUneLigne l i 
#voici la commande pour avoir le nombre de caractére en shell
#   grep -o A dico.txt|wc -l
#voici la commande pour avoir le nomnre de caractére sur  une ligne
#sed -n 5p vide | grep -o "a" | wc -l
