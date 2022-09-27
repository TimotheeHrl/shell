#! /bin/bash/

# Dans un test « CASE »  afficher les codes retour suivant :
# ERR=0  OK : code retour 0
# ERR=1  ERREUR : code retour 1
# ERR=2  ERREUR : code retour 2
CASE(){
echo -e "Enter the result: \c"
read -r ERR
case $ERR in
1) echo "OK";return 0;;
2) echo "ERREUR";return 1;;
3) echo "ERREUR";return 2;;  
*) echo "Invalid Option provided"
esac
}
CASE
