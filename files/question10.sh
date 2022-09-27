#! /bin/bash/

# Dans une boucle « for » pour chaque fichier dans le répertoire /fic/${USER}/OUT,
#  afficher ce fichier sans le répertoire dans un message puis le copier 
#  dans le répertoire /fic/${USER}/SAVE en gardant la date de dernière modification.
#   Sans utiliser la commande ls ou ll.

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
 FILES=$(find . -type f) 
 echo $FILES

    cp -p ${FILES} ../SAVE/ 


cd ../../../
pwd

  
    done