close all;
clearvars;
clc;

img = imread('jet.bmp');
load('maskiPP.mat');

img1 = conv2(img, R1, 'same');

img2 = conv2(img, R2, 'same');

% gradient robertsa
figure(1);
subplot(3,2,1:2)
imshow(img)
title('oryginal')
subplot(3,2,3);
imshow(img1+128, []);
title('przesuniecie o 128')
subplot(3,2,4);
imshow(abs(img1),[]);
title('wartosc bezwzgledna')
subplot(3,2,5);
imshow(img2+128, []);
title('przesuniecie o 128')
subplot(3,2,6);
imshow(abs(img2),[]);
title('wartosc bezwzgledna')

imgP1 = conv2(img, P1, 'same');

imgP2 = conv2(img, P2, 'same');

% gradient prewitta
figure(2);
subplot(3,2,1:2)
imshow(img)
title('oryginal')
subplot(3,2,3);
imshow(imgP1+128, []);
title('przesuniecie o 128')
subplot(3,2,4);
imshow(abs(imgP1),[]);
title('wartosc bezwzgledna')
subplot(3,2,5);
imshow(imgP2+128, []);
title('przesuniecie o 128')
subplot(3,2,6);
imshow(abs(imgP2),[]);
title('wartosc bezwzgledna')


imgS1 = conv2(img, S1, 'same');

imgS2 = conv2(img, S2, 'same');
imgK1 = imgS1;
imgK2=imgS2;

% gradient sobela
figure(3);
subplot(3,2,1:2)
imshow(img)
title('oryginal')
subplot(3,2,3);
imshow(imgS1+128, []);
title('przesuniecie o 128')
subplot(3,2,4);
imshow(abs(imgS1),[]);
title('wartosc bezwzgledna')
subplot(3,2,5);
imshow(imgS2+128, []);
title('przesuniecie o 128')
subplot(3,2,6);
imshow(abs(imgS2),[]);
title('wartosc bezwzgledna')

imgK1a=imgK1;
imgK2a=imgK2;
imgW = sqrt((imgK1a.^2 + imgK2a.^2));
imgW2 = abs(imgK1)+abs(imgK2);


figure(4);
subplot(1,3,1);
imshow(img);
title('oryginal');
subplot(1,3,2);
imshow(imgW,[]);
title('filtr kombinowany z pierwiastkiem');
subplot(1,3,3);
imshow(imgW2,[]);
title('filtr kombinowany z modulem');
