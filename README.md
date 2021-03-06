# Logical-Poet
2K image TO 12K painting.



<div align='center'>
  <img src='iPhoneSE2.JPG' width='1920px'>
</div>

<div align='center'>
  <img src='IMG_0601ss.JPG' width='5760px'>
</div>
IMAGE taken iPhoneSE to 6K painting sample

## Dependency

 Torch , Pytorch, G'MIC, UBUNTU 16.04 (UBUNTU 14.04), CUDA

[texture_net](https://github.com/DmitryUlyanov/texture_nets)

[G'MIC filter](http://gmic.eu/gimp.shtml)
```
sudo add-apt-repository ppa:otto-kesselgulasch/gimp-edge

sudo apt-get update

sudo apt-get install gmic gimp-gmic
```
[ImageMagick](http://www.imagemagick.org/script/index.php)

[waifu2x](https://github.com/nagadomi/waifu2x)

[pytorch/examples](https://github.com/pytorch/examples/tree/master/super_resolution)



## How to Road 

#### 1. making 6k painting

insert images(2k sized) to /logical poet/s

```
bash hy.sh
```
(resulted in /s11)

#### 2. making 12k painting

paste s11's 6k images to waifu2x install folder (needed Installation) 

and

go to waifu2x folder

```
bash folder.sh
```
(copy and paste as folder.sh to waifu2x folder)

(resulted in waifu2x/s)

#### 3. enhance 12k painting

copy and paste as resulted 12k to logical-poet/s12

back to logical-poet

```
bash 12kd.sh
```
resulted in /s13


## Tip and resulted samples

Bright and colorful images works well than less colored images by empirically.

https://drive.google.com/drive/folders/0B76DD_FEKmQDcjJsMHJzVWpqVGM

https://drive.google.com/drive/folders/0B76DD_FEKmQDM0NzUFBQNDNwMlU

#### TO DO

1. 12k painting enhancement 

2. more general model 

3. selfie model 


## Citation

If you find this code useful for your research, please cite:

```
  @misc{seominlee 2017,
  author = {Seomin, Lee},
  title = {Logical-Poet},
  year = {2017},
  publisher = {GitHub},
  journal = {GitHub repository},
  howpublished = {\url{https://github.com/seominlee//Logical-Poet}},
  }
```


## License

Free for personal or research use; for commercial use please contact me.

