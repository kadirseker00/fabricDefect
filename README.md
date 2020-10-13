# Korteks Fabric Dataset (KFD)

Dataset is can be found in this page;

http://ceng1.cumhuriyet.edu.tr/datasets/kfd/

-Source images are in FABRIC folder. 

-createPatchAuto script generates 5000 (500 patch per source image) random patches.

-The dataset are includes 100x100 patches  with 0.2 resize parameters.

-Sample names have information about patch. For example;  s100_r02_2_685 

	--100x100 resolution
	
	--0.2 resize parameter
	
	--It is cropped from 2nd source image from FABRIC folder.  (DSC_002.jpg)
	
	--It is 185th patch   (500+185=685) of generated from 2nd source image.
	

-Please cite paper below for using the dataset;

SEKER, Abdulkadir "Stacked Autoencoder Method for Fabric Defect Detection." Cumhuriyet Science Journal 38.2 (2017).

https://dergipark.org.tr/en/pub/cumuscij/issue/28771/300261
