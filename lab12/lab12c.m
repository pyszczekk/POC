clearvars;
close all;
clc;

img = imread('lunar.bmp');
f = fft2(img);
imgfft2 = fftshift(f);
A = log10(abs(imgfft2)+1);
F = angle(imgfft2.*(A>0.0001));

figure(1);
subplot(1,3,1);
imshow(img);
title('oryginal');
subplot(1,3,2);
imshow(A,[]);
title('amplituda');
subplot(1,3,3);
imshow(F,[])
title('faza');

th = 10
fft2abs = log10(abs(f)+1);
f(fft2abs>th)=0;

imgfft2 = fftshift(f);
unshifted = ifftshift(imgfft2);

imgf = ifft2(unshifted);

figure(2)
subplot(1,2,1)
imshow(img);
title('oryginal');
subplot(1,2,2);
imshow(imgf,[]);
title('po usunieciu zaklocen');

