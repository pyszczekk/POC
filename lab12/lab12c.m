close all;
clearvars;
clc;

%odwrotna dwuwymiarowa transformata fouriera


img = imread('kolo.bmp');

fourier = fft2(img);
shifted = fftshift(fourier);

unshifted = ifftshift(shifted);
unfourier = ifft2(unshifted);

figure(1)
subplot(2,2,1)
imshow(img)
title('oryginal')
subplot(2,2,2)
imshow(unfourier,[])
title('odwrotny fourier')
subplot(2,2,3:4)
imshow(abs(uint8(unfourier)-img),[])
title('roznica')
