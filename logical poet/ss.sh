cd s9
for i in *.*
do
python3 super_resolve.py --cuda --input_image $i --model model_epoch_30.pth --output_filename ../s10/$i 
done
cd ..
cd s10
for i in *.*
do
gmic -input $i -fx_deblur 2,10,20,0.1,1,11,0,24,0 -o ../s11/$i
done
