cd s12
for i in *.*
do
gmic -input $i -fx_deblur 2,10,20,0.1,1,11,0,24,0 -o ../s13/$i
done
