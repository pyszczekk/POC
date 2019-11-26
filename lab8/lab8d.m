close all;
clearvars;
clc;

img = imread('calculator.bmp');
SE = ones(1, 71);

marker = imerode(img,SE);
mask = img;
imgO=imopen(img,SE);
imgR=imreconstruct(marker,mask)

figure(1)
subplot(4,2,1:2)
imshow(img);
title('oryginal');
subplot(4,2,3);
imshow(imgO)
title('otwarcie');
subplot(4,2,4);
imshow(imgR)
title('rekonstrukcja');
subplot(4,2,5)
imshow(img - imgO);
title('oryginal - otwarcie')
subplot(4,2,6)
imshow(img-imgR);
title('oryginal - rekonstrukcja')
subplot(4,2,7:8)
imshow(imtophat(img,SE))
title('top hat');

SE2 = ones(1,11);
imgEdited = img-imgR;

marker = imerode(imgEdited,SE2);
mask=imgEdited;
imgR2 = imreconstruct(marker,mask);
figure(2)
subplot(1,2,1);
imshow(img);
title('oryginal')
subplot(1,2,2);
imshow(imgR2);
title('rekonstrukcja pionowa');

%ratowanie sina, asina
SE3 = ones(1,21);
imgD = imdilate(imgR2,SE3);
mask = imgEdited;
marker = min((img-imgO), imgD);

figure(3)
subplot(1,2,1);
imshow(img);
title('oryginal')
subplot(1,2,2);
imshow(imreconstruct(marker,mask));
title('asin');


