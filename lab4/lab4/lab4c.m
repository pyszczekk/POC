clearvars;
clear all;
clc;

img = imread('lenaRGB.bmp');

figure(1);
imshow(img);

figure(2);
R = img(:,:,1);
subplot(3,2,1);
imshow(R);
subplot(3,2,2);
imhist(R);

G = img(:,:,2);
subplot(3,2,3);
imshow(G);
subplot(3,2,4);
imhist(G);

B = img(:,:,3);
subplot(3,2,5);
imshow(B);
subplot(3,2,6);
imhist(B);

Re = histeq(R, 256);
Ge = histeq(G, 256);
Be = histeq(B, 256);
imgEQ = img;
imgEQ(:,:,1) = Re;
imgEQ(:,:,2) = Ge;
imgEQ(:,:,3) = Be;
figure(3);
imshow(imgEQ);


imgHSV = rgb2hsv(img);
H = imgHSV(:,:,1);
S = imgHSV(:,:,2);
V = imgHSV(:,:,3);

figure(4);
subplot(3,2,1); 
imshow(H); 
subplot(3,2,2); 
imhist(H);
subplot(3,2,3); 
imshow(S); 
subplot(3,2,4); 
imhist(S);
subplot(3,2,5); 
imshow(V); 
subplot(3,2,6); 
imhist(V);

Ve = histeq(V, 256);
figure(5); 
subplot(2,1,1); 
imshow(Ve); 
subplot(2,1,2); 
imhist(Ve);

figure(6);
imgHSV2 = imgHSV;
imgHSV2(:,:,3) = Ve;
H2R = hsv2rgb(imgHSV2);
imshow(H2R);
