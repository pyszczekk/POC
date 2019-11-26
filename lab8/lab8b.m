close all;
clearvars;
clc;

%scieniane
img = imread('fingerprint.bmp');
imgT = bwmorph(img, 'thin', 1);
imgT2 = bwmorph(img, 'thin', 2);
imgTi = bwmorph(img, 'thin', Inf);
figure(1)
subplot(3,2,1:2);
imshow(img);
title('oryginal');
subplot(3,2,3);
imshow(imgT);
title("x1");
subplot(3,2,4)
imshow(imgT2)
title("x2")
subplot(3,2,5:6)
imshow(imgTi)
title('inf');

%szkieletyzacja
img = imread('kosc.bmp');
figure(2)
subplot(1,2,1);
imshow(img)
title('oryginal');
subplot(1,2,2);
imshow(bwmorph(img,'skel',Inf));

%rekonstrukcja morfologiczna

img = imread('text.bmp');

SE2 = ones(51, 1);

imgE = img; 
imgE = imerode(imgE, SE2);
imgE = imdilate(imgE, SE2);

marker = imerode(img, SE2);
mask = img;
imgR = imreconstruct(marker, mask);

figure(3)
subplot(1,3,1);
imshow(img)
title('oryginal');
subplot(1,3,2);
imshow(imgE)
title('edyjca');
subplot(1,3,3);
imshow(imgR)
title('rekonstrukcja');


%wypelnienie dziur i czyszczenie brzegu
figure(4)
subplot(3,1,1)
imshow(img)
title('iryginal');
subplot(3,1,2);
imshow(imfill(img,'holes'))
title('wypelnienie dziur');
subplot(3,1,3)
imshow(imclearborder(img))
title('czyszczenie brzegu');





