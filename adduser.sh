echo "entre le nom utilisateur"
read A
sudo useradd $A 
sudo passwd  $A
passwd -w 4  -i 2  -x 30  -n 14 $A
passwd -S $A
echo "entre le  nom group"
read B
gpasswd -a $A $B

