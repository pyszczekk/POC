close all;
clearvars;
clc;

img = imread('lenaSzum.bmp');
imgF = medfilt2(img); %3x3 domyslnie

figure(1);
subplot(1,3,1);
imshow(img);
title('oryginal');
subplot(1,3,2);
imshow(imgF);
title('filtracja medianowa');
subplot(1,3,3);
imshow(imabsdiff(img,imgF),[]);
title('modul z roznicy');

lena = imread('lena.bmp');
lenaM = medfilt2(lena); %mediana
H = fspecial('average',3);
lenaA = uint8(conv2(lena,H,'same'));    %srednia

figure(2);
subplot(3,2,1:2);
imshow(lena);
title('oryginal');
subplot(3,2,3);
imshow(lenaM);
title('mediana');
subplot(3,2,4);
imshow(imabsdiff(lena,lenaM),[]);
title('modul z roznicy');
subplot(3,2,5);
imshow(lenaA);
title('srednia');
subplot(3,2,6);
imshow(imabsdiff(lena,lenaA),[])

lenaW = lena;
for i=1:10
    lenaW = medfilt2(lenaW,[5 5]);
end

figure(3);
subplot(1,2,1);
imshow(lena);
title('oryginal');
subplot(1,2,2);
imshow(lenaW)
title('mediana wielokrotna - posteryzacja');


