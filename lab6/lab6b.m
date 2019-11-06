close all;
clearvars;
clc;

img = imread('lenaSzum.bmp');
imgF = medfilt2(img);

figure(1);
subplot(1,3,1);
imshow(img);
title('oryginal');
subplot(1,3,2);
imshow(imgF);
title('filtracja medianowa');
subplot(1,3,3);
imshow(imabsdiff(img,imgF),[]);
title('modul z roznicy');

