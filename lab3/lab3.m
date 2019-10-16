close all;
clearvars;
clc;


load('funkcjeLUT.mat');
%figure(1);
%plot(pila);

img = imread('jet.bmp');
%figure(2);
%imshow(img);

newImg = intlut(img,kwadratowa);
%figure(3);
%imshow(newImg);


i = imread('lena.bmp');
figure(1);
LUT(i,kwadratowa);

figure(2);
LUT(i,log);

figure(3);
LUT(i,odwlog);

figure(4);
LUT(i,odwrotna);

figure(5);
LUT(i,pierwiastkowa);

figure(6);
LUT(i,pila);

figure(7);
LUT(i,wykladnicza);


