 %this code use to get random slices of an image.
clear;
clc;
frame = -1;
NumberOfSamples = 500;

for s =1:4
    resize_param=0;
    frame = frame+100;
    for r =1:5
        resize_param=resize_param+0.2;
        dir = strcat('Sample',num2str(frame+1),'_r0',num2str(resize_param*10));
        mkdir(dir);
        index = 1;
        for k = 1:10
            %load images
            stringImage = 'FABRIC/DSC_000';
            stringImage = strcat(stringImage,int2str(k),'.JPG');  
            im = imread(stringImage);
            img = rgb2gray(im);
            img = imresize(img,resize_param); 
            %get the size of image
            [x,y] = size(img);
            %create random index
            %create random index
            randx = randi([1 (x-frame)],1,NumberOfSamples) ;
            randy = randi([1 (y-frame)],1,NumberOfSamples) ;
            patches = cell(NumberOfSamples);


            for i=1:NumberOfSamples
                startx = randx(i);
                starty = randy(i);
                patches{i} = img(startx:(startx+frame),starty:(starty+frame),:);
                imwrite(patches{i},strcat(dir,'/s',num2str(frame+1),'_r0',num2str(resize_param*10),'_', num2str(k),'_',num2str(index),'.jpg'),'jpg');
                index = index+1;
            end
        end
    end
end