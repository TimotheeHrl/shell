#! /bin/bash

#   7) Dans une variable REP_IN, récupérer le paramètre de la variable  integration.input.directory dans 
#      le fichier de configuration /app/${USER}/conf/filesLocation.properties.

# Contenu du fichier /app/${USER}/conf/filesLocation.properties:

# # Dossier d'entrée pour le job d'intégration
# integration.input.directory=/fic/${USER}/integration/entree
# # Dossier d'erreur pour le job d'intégration
# integration.error.directory=/fic/{USER}//integration/error


cd ./app
 list_Folder=$(ls -l | grep ^d | awk '{print $9}')
       echo -e $list_Folder
  USERS=$(echo $list_Folder | tr " " "\n")
cd ..
for USER in ${USERS[@]}
  do    
    echo "User Name is $USER"
 
REP_IN=$(cat "./app/${USER}/conf/filesLocation.properties" | grep "integration.input.directory" | cut -d "=" -f2)
if [ ! -n "$REP_IN" ]; then
        echo "File $REP_IN does not exist"
cd ./fic/${USER}/integration/error/
touch error_$USER.txt
echo "integration.input.directory value is null"  > error_$USER.txt
    else 
   cd ./fic/${USER}/integration/entree/
touch Result_$USER.txt
echo "integration.input.directory value is $REP_IN" > Result_$USER.txt 
    fi
cd ./../../../../
  done
