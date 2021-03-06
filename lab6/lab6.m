close all;
clearvars;
clc;

img = imread('plansza.bmp');
[X Y]=size(img);
H = fspecial('average',3);
imgK = uint8(conv2(img,H,'same'));
imgM = imabsdiff(img,imgK);
figure(1);
subplot(1,3,1);
imshow(img);
title('oryginal');
subplot(1,3,2);
imshow(imgK);
title('konwolucja');
subplot(1,3,3);
imshow(imgM,[]);
title('modul z roznicy');

figure(2);
subplot(3,2,1);
imshow(img);
title('oryginal');
subplot(3,2,2);
imshow(imgK)
title('3');
subplot(3,2,3);
imshow(uint8(conv2(img,fspecial('average',5),'same')));
title('5')

subplot(3,2,4);
imshow(uint8(conv2(img,fspecial('average',9),'same')));
title('9')

subplot(3,2,5);
imshow(uint8(conv2(img,fspecial('average',15),'same')));
title('15')
subplot(3,2,6);
imshow(uint8(conv2(img,fspecial('average',35),'same')));
title('35')



lena = imread('lena.bmp');
lenaK= uint8(conv2(lena,fspecial('average',3),'same'));

M=[1 2 1;2 4 2;1 2 1];
M=M/sum(sum(M));

figure(3)
subplot(1,3,1);
imshow(lena);
title('oryginal');
subplot(1,3,2);
imshow(lenaK);
title('z filtrem dolnoprzepustowym');
subplot(1,3,3);
imshow(imabsdiff(lena,lenaK))
title('modul roznicy');

lenaK2=uint8(conv2(lena,M,'same'));
figure(4)
subplot(1,3,1);
imshow(lena);
title('oryginal');
subplot(1,3,2);
imshow(lenaK2);
title('z maska');
subplot(1,3,3);
imshow(imabsdiff(lena,lenaK2))
title('modul roznicy');


G1 = fspecial('gaussian',5,0.5);
G2 = fspecial('gaussian',5,0.1);
G3 = fspecial('gaussian',5,1);

figure(5);
subplot(4,2,1:2);
imshow(lena);
title('oryginal')
subplot(4,2,3);
mesh(G1);
subplot(4,2,4);
imshow(uint8(conv2(lena,G1,'same')));
title(G1);

subplot(4,2,5);
mesh(G2);
subplot(4,2,6);
imshow(uint8(conv2(lena,G2,'same')));
title(G2);

subplot(4,2,7);
mesh(G3);
subplot(4,2,8);
imshow(uint8(conv2(lena,G3,'same')));
title(G3);

