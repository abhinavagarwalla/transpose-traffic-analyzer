mkdir "$1_Dir"
cat $1 | while read i
	echo $i
	do wget -nc "https://maps.googleapis.com/maps/api/geocode/json?address=$i&key=" -O "$1_Dir/$i.json"  
	sleep 2
done 
