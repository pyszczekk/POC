close all;
clearvars;
clc;

kwadrat = imread('kwadrat.bmp');
kwadratT = imread('kwadratT.bmp');
kwadrat45 = imread('kwadrat45.bmp');
kwadratS = imread('kwadratS.bmp');
kwadratKL = imread('kwadratKL.bmp');

[A1,F1] = fourier(kwadrat);


figure(1)
subplot(5,3,1)
imshow(A1,[])
title('aplituda - kwadrat')
subplot(5,3,2)
imshow(F1,[])
title('faza - kwadrat')
subplot(5,3,3);
imshow(fft2(kwadrat))
title('f-obraz')

%translacja
[A,F] = fourier(kwadratT);
subplot(5,3,4)
imshow(A,[])
title('aplituda - kwadrat T')

subplot(5,3,5)
imshow(F,[])
title('faza - kwadrat T')

subplot(5,3,6)
imshow(fft2(kwadratT))
title('f-obraz')

%rotacja
[A,F] = fourier(kwadrat45);

subplot(5,3,7)
imshow(A,[])
title('aplituda - kwadrat 45')

subplot(5,3,8)
imshow(F,[])
title('faza - kwadrat 45')
subplot(5,3,9)
imshow(fft2(kwadrat45))
title('f-obraz')

%rozmiar
[A,F] = fourier(kwadratS);

subplot(5,3,10)
imshow(A,[])
title('aplituda - kwadrat S')

subplot(5,3,11)
imshow(F,[])
title('faza - kwadrat S')

subplot(5,3,12)
imshow(fft2(kwadratS))
title('f-obraz')
%kombinacja liniowa
[A,F] = fourier(kwadratKL);

subplot(5,3,13)
imshow(A,[])
title('aplituda - kwadrat KL')

subplot(5,3,14)
imshow(F,[])
title('faza - kwadrat KL')
subplot(5,3,15)
imshow(fft2(kwadratKL))
title('f-obraz')


figure(2)
subplot(5,1,1)
imshow(kwadrat)
title('kwadrat')
subplot(5,1,2)
imshow(kwadratT)
title('kwadratT')
subplot(5,1,3)
imshow(kwadrat45)
title('kwadrat45')
subplot(5,1,4)
imshow(kwadratS)
title('kwadratS')
subplot(5,1,5)
imshow(kwadratKL)
title('kwadratKL')