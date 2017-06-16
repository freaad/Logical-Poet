cd s
for i in *.*
do echo -n "Converting $i";
convert -resize 250% $i $i &&
echo ' [Done]'; done 


