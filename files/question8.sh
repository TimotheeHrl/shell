#! /bash/bin/

# Dans le répertoire suivant : /fic/${USER}/OUT lister tous les fichiers DGFIP_*_FAP.tgz 
# sans utiliser la commande ls ou ll :


# list a file starting by DGFIP_ and ending by _FAP.tgz


declare -a USERS
USERS=( "Lucie_Leroux" "Bernard_Tapie" "Leroy_Merlin" "Josiane_Lemieux" )
cd ./fic/
for USER in ${USERS[@]}
  do    
 cd ./$USER/integration/OUT/
 echo $USER  folder
find . -name 'DGFIP*FAP.tgz' 
cd ../../../
  
    done
