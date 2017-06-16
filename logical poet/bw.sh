cd s
for i in *.*
do
gmic -input $i -fx_freaky_bw 34,20,0,0,0,0 -o ../s1/$i
done
