# read folder names in the current directory 
# and print the folder name and the folder size

# grep file name .txt ?
# if file name .txt exists
# then
# print file name



readFileName(){
    list_Folder=$(ls -l | grep ^d | awk '{print $9}')
       echo -e $list_Folder
       personsNameArray=$(echo $list_Folder | tr " " "\n")

         for person in $personsNameArray
            do
                    echo $person
                    cd ./$person/
                    cat ./$person.txt
                    pwd
                    # get ramdom phone number

                  var= curl -X GET -H "Content-Type: application/json"  https://randomuser.me/api/ | jq ".results" 
               # create a json file

                         

                    cd ..
                    
            done
        }
readFileName