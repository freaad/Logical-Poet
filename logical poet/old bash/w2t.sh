rm s1/*.* 
rm s2/*.* 
rm s3/*.* 
rm s4/*.* 
rm s5/*.* 
rm s6/*.* 
rm s7/*.* 
rm s8/*.*
rm s9/*.*
rm s10/*.*
cd s
for i in *.*
do 
gmic -input $i -fx_tk_photoillustration 0,0.25,0,0.3,0.5,0.5,1,0,5,0,1,0,0,1,0,0,1.2,98.5,5,0.5,0,0,0,0,0,1,0 -o ../s1/$i 
done 
cd ..
cd s1
for i in *.*
do
gmic -input $i -fx_tk_photoillustration 0,0.25,0,0.3,0.5,0.5,1,0,5,0,1,0,0,1,0,0,1.2,98.5,5,0.5,0,0,0,0,0,1,0 -o ../s2/$i 
done
cd ..
th foldertest.lua -model_t7 data/checkpoints/tumb2.t7 -input_dir s -output_dir s3 &&
cd s2 
for i in *.* 
do 
convert $i ../s3/$i -alpha set -channel A -evaluate set 80% -compose softlight -composite ../s4/$i 
done 
cd .. 
cd s4
for i in *.*
do
gmic -input $i -fx_blur_bloom 1,2,3,2,0,0,0,0,7,0 -o ../s5/$i
done
cd ..
cd s5
for i in *.*
do
gmic -input $i -fx_segment_watershed 15,1,0,0,0 -o ../s6/$i
done
cd .. 
cd s6
for i in *.*
do
convert $i ../s/$i -alpha set -channel A -evaluate set 85% -compose softlight -composite ../s7/$i 
done
cd ..
cd s7
for i in *.*
do
gmic -input $i -iain_fast_denoise_p 0.8,0,1,0,0,0,1 -o ../s8/$i
done
cd ..
cd s8
for i in *.*
do
convert $i ../s/$i -alpha set -channel A -evaluate set 45% -compose softlight -composite ../s9/$i 
done




