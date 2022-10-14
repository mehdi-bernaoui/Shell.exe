Date=$(date +%d-%m-%y-%H:%M)
fichier=number_connection-$Date
last projet | wc -l >> $fichier
tar -czvf /home/projet/Shell-exe/Job_8/$fichier.tar.gz $fichier
mv $fichier.tar.gz Backup
rm $fichier
