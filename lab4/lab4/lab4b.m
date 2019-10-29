clearvars;
close all;
clc;

img = imread('phobos.bmp');

figure(1);
subplot(2,2,1);
imshow(img);
subplot(2,2,2);
imshow(histeq(img));
subplot(2,2,3);
imhist(img);
subplot(2,2,4);
imhist(histeq(img));

load histogramZadany.mat;

imgZ = histeq(img,histogramZadany);
figure(2);
subplot(2,2,1:2);
imshow(imgZ);
subplot(2,2,3:4);
imhist(imgZ);

imgA = imadjust(img);
figure(3);
subplot(1,2,1);
imshow(imgA);
subplot(1,2,2);
imhist(imgA);


imgC = adapthisteq(img);
figure(4);
subplot(1,2,1);
imshow(imgC);
subplot(1,2,2);
imhist(imgC);


