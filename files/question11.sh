#! /bin/bash/

# Dans une boucle « while » tant que ${NBR} n’est pas égale à 4 
# on boucle et à chaque boucle ${NBR}=${NBR}+1.


NBR=0


while [ $NBR -le 4 ]
do
NBR=`expr $NBR + 1`
${NBR}=${NBR}+1
echo $NBR

done