cd super_res
for i in *.*
do
python3 super_resolve.py --cuda --input_image $i --model model_epoch_30.pth --output_filename ../res/$i 
done

