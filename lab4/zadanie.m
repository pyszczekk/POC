clearvars;
close all;
clc;

img = imread('jet.bmp');
m = mean(img(:));
lm = round(m);

H = imhist(img);
H1 = H(1:lm);
H2 = H(lm: 255);
H1 = H1/sum(H1);
H2 = H2/sum(H2);

C1 = cumsum(H1);
C2 = cumsum(H2);
C1n = lm * C1;
C2n = lm+1 + (255-lm+1)*C2;
lut = [uint8(C1n); uint8(C2n)];

lutImg = intlut(img, lut);

figure(1);
subplot(3,2,1)
imhist(img)
title('original')

subplot(3,2,2)
imshow(img);
title('original');

subplot(3,2,3)
imhist(lutImg);
title('bbhe');

subplot(3,2,4)
imshow(lutImg);
title('bbhe')

subplot(3,2,5);
imhist(histeq(img));
title('he (histeq)');

subplot(3,2,6);
imshow(histeq(img));
title('he (histeq)')



