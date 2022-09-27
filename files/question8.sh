#! /bash/bin/

# Dans le répertoire suivant : /fic/${USER}/OUT lister tous les fichiers DGFIP_*_FAP.tgz 
# sans utiliser la commande ls ou ll :


# list a file starting by DGFIP_ and ending by _FAP.tgz


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
find . -name 'DGFIP*FAP.tgz' 
cd ../../../
  
    done
