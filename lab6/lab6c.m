close all;
clearvars;
clc;

img = imread('moon.bmp');

M= [0 1 0; 1 -4 1; 0 1 0];

M = M/9;

imgK = conv2(img,M,'same');
imgK1 =imgK+128;
imgK2= abs(imgK);

M2 = fspecial('laplacian'); % alpha 0.2 - domyslnie
imgL = conv2(img, M2, 'same');

figure(1);
subplot(3,2,1:2)
imshow(img)
title('oryginal')
subplot(3,2,3);
imshow(imgK1, []);
title('przesuniecie o 128')
subplot(3,2,4);
imshow(imgK2,[]);
title('wartosc bezwzgledna')
subplot(3,2,5:6);
imshow(img - uint8(imgL));
title('oryginal + laplacjan')


