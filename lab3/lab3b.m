clearvars;
close all;
clc;

%------------------------------------ sumowanie
img1 = imread('jet.bmp');
img2 = imread('lena.bmp');
imgAdd = imadd(img1, img2);
figure(1);
imshow(imgAdd);
title("wynik sumowania 1 ");

figure(2);

imgAdd2 = imadd(img1, img2,'uint16');
imshow(imgAdd2,[]);
title("wynik sumowania 2 (uint16)");

%--------------------------------------- odejmowanie

figure(3);
imgSub = imsubtract(img1, img2);

imshow(imgSub);
title("wynik odejmowania 1 ");

figure(4);
img2b = int16(img2);
img1b=int16(img1);
imgSub2 = imsubtract(img1b, img2b);
imshow(imgSub2,[]);
title("wynik odejmowania 2 (uint16)");


%------------------------------------ mnozenie

imgMul = immultiply(img1, img2);
figure(5);
imshow(imgMul);
title('mnozenie 1');

figure(6);
maska = imread('kolo.bmp');
maska = boolean(maska);
imgMul2 = immultiply(img1, maska);
imshow(imgMul2);
title('mnozenie 2');


figure(7);
imgMul3 = immultiply(img1, 2.5);
imshow(imgMul3);
%------------------------------------- negatyw
figure(8)
imshow(imcomplement(img2));
title('negatyw');
