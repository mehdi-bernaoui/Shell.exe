for ligne in `cat /home/projet/Téléchargements/Shell_Userlist.csv`;
do
id=`echo ${ligne} | cut -d "," -f 1`
prenom=`echo ${ligne} | cut -d  "," -f 2 `
nom=`echo ${ligne} | cut -d "," -f 3 `
mdp=`echo ${ligne} | cut -d "," -f 4 `
role=`echo ${ligne} | cut -d "," -f 5 `
mdpc=$(perl -e 'print crypt($ARGV[0], "salt")' , $mdp)
sudo useradd -m -p $mdpc $prenom-$nom

if [[ "$role" =~ .*Admin.* ]]
then
echo "Ajout de l'utilisateur à la table des administrateur" 
sudo adduser $prenom-$nom sudo
sudo adduser $prenom-$nom adm
echo "admin ajouté"
else
echo "pas la permission"
fi
done

