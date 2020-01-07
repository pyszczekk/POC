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
subplot(5,2,1)
imshow(A1,[])
title('aplituda - kwadrat')
subplot(5,2,2)
imshow(F1,[])
title('faza - kwadrat')

%translacja
[A,F] = fourier(kwadratT);
subplot(5,2,3)
imshow(A,[])
title('aplituda - kwadrat T')

subplot(5,2,4)
imshow(F,[])
title('faza - kwadrat T')


%rotacja
[A,F] = fourier(kwadrat45);

subplot(5,2,5)
imshow(A,[])
title('aplituda - kwadrat 45')

subplot(5,2,6)
imshow(F,[])
title('faza - kwadrat 45')


%rozmiar
[A,F] = fourier(kwadratS);

subplot(5,2,7)
imshow(A,[])
title('aplituda - kwadrat S')

subplot(5,2,8)
imshow(F,[])
title('faza - kwadrat S')

%kombinacja liniowa
[A,F] = fourier(kwadratKL);

subplot(5,2,9)
imshow(A,[])
title('aplituda - kwadrat KL')

subplot(5,2,10)
imshow(F,[])
title('faza - kwadrat KL')



