clearvars;
close all;
clc;

img = imread('lena.bmp');
f = fft2(img);
f= fftshift(f);
[A,F]=fourier(img);

figure(1)
subplot(1,3,1)
imshow(img)
title('oryginal')
subplot(1,3,2);
imshow(A,[]);
title('amplituda')
subplot(1,3,3);
imshow(F,[])
title('faza')

[f1,f2]=freqspace(512, 'meshgrid');

Hd = ones(512);

r=sqrt(f1.^2+f2.^2);

Hd((r>0.1))=0;

figure(2)

colormap(jet(64));
mesh(f1,f2,Hd);

title('wizualizacja filtru')
figure(3)
imshow(f.*Hd);
title('wynik')

h = fwind1(Hd, hanning(21));

[H f1 f2] = freqz2(h,512,512);
figure(4)
colormap(jet(64));
mesh(f1,f2,H);
title('wizualizacja 2d')

figure(5)
imshow(f.*H);
title('wynik 2d')

[width, height] = size(image);
sigma = 10;
mask = fspecial('gaussian', width, sigma);

mask = mat2gray(mask);

figure(6)
imshow(mask)
title('wizualizacja- gauss');

figure(7)
imshow(f.*mask);
title('wynik gauss');


