#! /bin/bash



declare -a persons
persons=( "Lucie_Leroux" "Bernard_Tapie" "Leroy_Merlin" "Josiane_Lemieux" )
for person in ${persons[@]}
  do      
    echo "Person Name is $person"

##### create persons with if else ... ####### 
#     if [ ! -d "$person" ]; then
#                 echo "File $person does not exist"
#                 # create the file $person
#                 mkdir $person
#                 cd ./$person/
#                 touch $person.txt
#                 echo $person > $person.txt
#                 cat ./$person.txt
#                 cd ..
#     else
#                 cd ./$person/

#        if [ -f $person.txt ]
#         then
               
#                 echo "File $person exists"

#                 cat ./$person.txt
      
#         else
#                 echo "File $person does not exist"
#                 touch $person.txt
#                 echo $person > $person.txt
#                 cat ./$person.txt
#         fi 
#         cd ..
#         fi
       
##### create persons with functions ... ####### 
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
   createPersonFile(){
         touch $person.txt
        echo $person prout prout > $person.txt
        readPersonFile        
   }
   readPersonFile(){
        echo pwd
        cat ./$person.txt
        cd .. 
   }
        
     checkIfPersonFolderExists   
done

echo "Number of persons in Bucket is" ${#persons[@]}
echo "All person ${persons[@]}"
 


