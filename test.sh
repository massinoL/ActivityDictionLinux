#!/bin/bash
#un fichier bash vide

nombreLettreSurUneLigne ( )
{
let "zero=0"
let "s=0"
let "cp=0"
let "ligne=5"




oc=`sed -n 6p vide | grep -o a | wc -l`
#nombre de a dans la derniére ligne
let "a1=oc"
let "s=a1"



for ((i=5 ; $i -1 ; i--))
do
  oc=`sed -n $i,6p vide | grep -o a | wc -l`

      let "y=oc"
      let "a2=y-s"

      let "ligne=ligne-1"
      if [ $a2 -ne $zero ]
      then

         let "cp=cp+1"
         echo "la ligne" $ligne " contient un A"
      echo "le cp est incrementé " $cp
      fi
      let "s=s+a2"


done

oc=`sed -n 1p vide | grep -o a | wc -l`
#nombre de a dans la derniére ligne
let "a6=oc"
#test si la derniére ligne contien un a
     if [ $a6 -ne $zero ]
       then
     let "cp=cp+1"
     echo "la ligne 1 contient un A"
     echo $cp
      fi

      echo "le resultat final"$cp


}


nombreLettreSurUneLigne
