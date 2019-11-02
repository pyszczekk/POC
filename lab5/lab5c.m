clc;
close all;
clearvars;

%dwuprogowa

img = imread('bart.bmp');

figure(1);
subplot(2,1,1);
imshow(img);
subplot(2,1,2);
imhist(img);

imgBW = img >190 & img <210;
imgBW=uint8(imgBW);

figure(2);
subplot(1,2,1);
imshow(img);
subplot(1,2,2);
imshow(imgBW,[]);