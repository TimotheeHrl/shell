#! /bin/bash/

# Dans une variable NBR compter le nombre de fichier total dans le répertoire : 
# /fic/${USER}/OUT sans utilisé la commande ls ou ll.

declare -a USERS
USERS=( "Lucie_Leroux" "Bernard_Tapie" "Leroy_Merlin" "Josiane_Lemieux" )
cd ./fic/
for USER in ${USERS[@]}
  do    
 cd ./$USER/integration/OUT/
 echo $USER  folder
# in bash how to count the number of files in a folder ?
 find . -type f | wc -l

cd ../../../
  
    done