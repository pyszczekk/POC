clearvars;
close all;
clc;

lena1 = imread('lena1.bmp');
lena2 = imread('lena2.bmp');
lena3 = imread('lena3.bmp');
lena4 = imread('lena4.bmp');

figure(1);

subplot(4,2,1);
imshow(lena1);
subplot(4,2,2);
imhist(lena1, 256);
subplot(4,2,3)
imshow(lena2);
subplot(4,2,4);
imhist(lena2, 256);
subplot(4,2,5);
imshow(lena3);
subplot(4,2,6);
imhist(lena3, 256);
subplot(4,2,7);
imshow(lena4);
subplot(4,2,8);
imhist(lena4, 256);

hist1=imread('hist1.bmp');
figure(2);
subplot(1,2,1);
imshow(hist1);
subplot(1,2,2);
imhist(hist1, 256);

hist=imadjust(hist1);
figure(3);
subplot(1,2,1);
imshow(hist);
subplot(1,2,2);
imhist(hist,256);


%histogram skumulowany
[H,x] = imhist(hist1);
C = cumsum(H);
k=max(C)./max(H);
C2=C./k;


figure(4);
hold on;
plot(x,H);
plot(x,C2);
hold off;

[H,x] = imhist(hist);
C3 = cumsum(H);
k=max(C3)./max(H);
C4=C3./k;


figure(5);
hold on;
plot(x,H);
plot(x,C4);
hold off;
[H,x] = imhist(hist1,256);
lut = intlut(hist1, uint8(255*C2/max(C2)));
[H2,x2]=imhist(lut,256);
Ch = cumsum(H2);
k=max(Ch)./max(H2);
Ch2=Ch./k;

figure(6);
subplot(2,1,1);
imshow(lut);
subplot(2,1,2);
hold on;
plot(x,H);
plot(x2,Ch2);
hold off;


figure(7)
subplot(2,1,1);
h=histeq(hist1,256);
imshow(h)
subplot(2,1,2);



