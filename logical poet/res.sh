# resize to 2k
cd s
for i in *.*
do echo -n "Converting $i";
convert -resize 1920X1280  $i $i &&
echo ' [Done]'; done 
