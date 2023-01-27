-
#################################################
# Administration  linux                         #
#                                               #
# date : Janvier 2023                           #
#                                               #  
# Tania Diaz                                    #
#################################################

#creation des utilisateur

echo "entre le nom utilisateur"
read A
sudo useradd  $A

sudo passwd $A

#Changer les parametres et mot de passe

echo " voulais vous changer les parametres par default mot pass?  Oui[O]/Non[N]"
read P
if  [[ $P == "O" ]];
then
echo " Rentrer les  nouveaux parametres"
read MP
sudo passwd $MP $A
sudo passwd  -S $A

else
sudo passwd -w 4  -i 2  -x 30  -n 14 $A
sudo passwd  -S $A
fi

#Creation de nouveau groupe

echo " Voulais-Vous Creer un nouveau Group Oui[O]/non[N]"
read O
if [[ $O == "O" ]];
then
echo "Cree le nom du group"
read  B
sudo  groupadd  $B

else
echo "entre le  nom group"
read B
sudo groupadd $B
fi

sudo usermod -a -G  $B $A
echo " l'utilisateur" $A  "a bien ete ajoute au group" $B

 





