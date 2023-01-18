
#!/bin/bash 
function afficher(){
cdate=$(date +"%r %d-%m-%y")
echo "date de scraping" : $cdate >> sales.txt
}
afficher

#tableau des articles
articles="rtx3060 rtx3070 rtx3080 rtx3090 rx6700" 

#Boucle for pour  parcourir les valeurs
for article in ${articles}
do
echo${article} 
resultat=$(curl http://10.0.2.15:5000/${article}) 
echo "Pourcentage de ventes" ${article}:$resultat >> "sales.txt"
done
