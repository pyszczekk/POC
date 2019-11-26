close all;
clearvars;
clc;

img = imread('ertka.bmp');
SE = strel('square',3);
imgE=imerode(img,SE);
imgE2=imerode(imgE,SE);
imgE3=imerode(imgE2,SE);
figure(1);
subplot(2,2,1);
imshow(img);
title('oryginal');
subplot(2,2,2);
imshow(imgE);
title("po erozji");
subplot(2,2,3);
imshow(imgE2);
title("erozja x2");
subplot(2,2,4);
imshow(imgE3);
title("erozja x3");

buzka = imread('buzka.bmp');
E = [1,0; 0,1]
figure(2)
subplot(1,2,1);
imshow(buzka)
title('oryginal');
subplot(1,2,2);
imshow(imerode(buzka,E));
title('erozja')

figure(3)
subplot(3,2,1:2)
imshow(img);
title('original');
subplot(3,2,3);
imshow(imerode(img,SE));
title('erozja');
subplot(3,2,4);
imshow(imdilate(img,SE));
title('dylatacja');
subplot(3,2,5);
imshow(imopen(img,SE));
title('otwarcie');
subplot(3,2,6);
imshow(imclose(img,SE));
title('zamkniecie');

img = imread('wyspa.bmp')
figure(5)
subplot(3,2,1:2)
imshow(img);
title('original');
subplot(3,2,3);
imshow(imerode(img,SE));
title('erozja');
subplot(3,2,4);
imshow(imdilate(img,SE));
title('dylatacja');
subplot(3,2,5);
imshow(imopen(img,SE));
title('otwarcie');
subplot(3,2,6);
imshow(imclose(img,SE));
title('zamkniecie');

img = imread('kolka.bmp')
figure(4)
subplot(3,2,1:2)
imshow(img);
title('original');
subplot(3,2,3);
imshow(imerode(img,SE));
title('erozja');
subplot(3,2,4);
imshow(imdilate(img,SE));
title('dylatacja');
subplot(3,2,5);
imshow(imopen(img,SE));
title('otwarcie');
subplot(3,2,6);
imshow(imclose(img,SE));
title('zamkniecie');

img = imread('ertka.bmp');

figure(6);
imshow(imopen(imclose(img,SE),SE))


hom=imread('hom.bmp');
SE1=[0,1,0;1,1,1;0,1,0];
SE2 = [1,0,1;0,0,0;1,0,1];

figure(7);
subplot(2,1,1);
imshow(hom);
title('original');
subplot(2,1,2);
imshow(bwhitmiss(hom,SE1,SE2))
title('hit miss');
