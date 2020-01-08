close all;
clearvars;
clc;

img = imread('dwieFale.bmp');
f = fft2(img);
shifted = fftshift(f);
A = log10(abs(shifted)+1);    
F = angle(shifted.*(A>0.0001));


unshifted = ifftshift(shifted);
img2 = ifft2(unshifted);

figure(1)
subplot(2,2,1)
imshow(img)
title('oryginal')
subplot(2,2,2)
imshow(img2,[])
title('odwrotna tranformata')
subplot(2,2,3)
imshow(A,[])
title('amplituda')
subplot(2,2,4)
imshow(F,[])
title('faza')


figure(2)
subplot()

