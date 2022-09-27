#! /bin/bash/

# Dans une variable NBR compter le nombre de fichier total dans le répertoire : 
# /fic/${USER}/OUT sans utilisé la commande ls ou ll.

cd ./app
 list_Folder=$(ls -l | grep ^d | awk '{print $9}')
       echo -e $list_Folder
  USERS=$(echo $list_Folder | tr " " "\n")
cd ..
cd ./fic/
for USER in ${USERS[@]}
  do    
 cd ./$USER/integration/OUT/
 echo $USER  folder
 find . -type f | wc -l

cd ../../../
  
    done