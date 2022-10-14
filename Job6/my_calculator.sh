if [[  "$2" == "+" ]]
then
somme=$(($1+$3))
echo "$somme"
elif [[ "$2" == "-" ]]
then
soustraction=$(($1-$3))
echo "$soustraction"
elif [[ "$2" == "x" ]]
then
multiplication=$(($1*$3))
echo "$multiplication"
elif [[ "$2" == "/" ]]
then
division=$(($1/$3))
echo "$division"
else
echo "fin"
fi
