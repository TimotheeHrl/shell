#! /bin/bash



declare -a persons
persons=( "Lucie_Leroux" "Bernard_Tapie" "Leroy_Merlin" "Josiane_Lemieux" )
checkStorageFolderExists(){
         if [ ! -d "app" ]; then
                echo "File App does not exist"
                # create the file $person
             mkdir "app"
                   cd ./app/

         else 
                 cd ./app/
                  
         fi
   }

 
checkStorageFolderExists
for person in ${persons[@]}
  do      
    echo "Person Name is $person"
     
createUserConfFile(){
        mkdir conf
        cd ./conf/
        touch filesLocation.properties
        echo "integration.input.directory=salut $person" > filesLocation.properties

        cd ..
        }

checkIfPersonFolderExists(){
         if [ ! -d "$person" ]; then
                echo "File $person does not exist"
                # create the file $person
             createPersonFolder
             
        else
                cd ./$person/
                echo pwd
                 cat ./$person.txt
                cd ..
         fi
   }


   createPersonFolder(){
           mkdir $person
           cd ./$person/
           checkifPersonFileExist
           createUserConfFile
               
   }
  
   checkifPersonFileExist(){
         if [ -f $person.txt ]
        then
               
                echo "File $person exists"
                readPersonFile
      
        else
                createPersonFile
        fi
   }
  
   readPersonFile(){
        cat ./$person.txt
        cd ..
   }
     
     checkIfPersonFolderExists   

     cd ..
    
done
 cd ..
     echo "_____________________APP folder done_____________________________"
     pwd

  checkFicFolderExists(){
         if [ ! -d "fic" ]; then
                echo "File Fic does not exist"
                # create the file $person
             mkdir "fic"
                   cd ./fic/
                   # in bash how to get users ?
         else 
                 cd ./fic/
                  
         fi
        }  

checkFicFolderExists

for person in ${persons[@]}
  do      
    echo "Person Name is $person"
       createPersonFolderInFic(){
           mkdir $person
           cd ./$person/
           mkdir integration
           cd ./integration/
           mkdir entree
           mkdir OUT
           cd ./OUT/
           tar -cvzf DGFIP_backup1_FAP.tgz ./../../../../app/$person/
           tar -cvzf DGFIP_backup2_FAP.tgz ./../../../../app/$person/
           touch notATgzFile.txt
                  cd ..
           mkdir error
           mkdir SAVE
           cd ../..
               
   }

   checkIfPersonFolderExistsInFic(){
         if [ ! -d "$person" ]; then
                echo "File $person does not exist"
                # create the file $person
             createPersonFolderInFic
             
        else
                cd ./$person/
                echo pwd
                 cat ./$person.txt
                cd ..
         fi

   }
   checkIfPersonFolderExistsInFic
pwd
    done
echo "Number of persons in Bucket is" ${#persons[@]}
echo "All person ${persons[@]}"





