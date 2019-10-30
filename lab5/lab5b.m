clc;
close all;
clearvars;

img = imread('rice.png');
[X, Y] = size(img);
imgBW = img;
W=15;
for i=1:X
    for j=1:Y
       m = meanLT(i,j,7,img,W,W)
       if m < 100
           imgBW(i,j)=255;
       else imgBW(i,j)=0;
       end
    end
end

figure(1);
subplot(1,2,1);
imshow(img)
subplot(1,2,2);
imshow(imgBW)

    
