close all;
clearvars;
clc;

img = imread('ferrari.bmp');
SE = strel('square',3);

imgE = imerode(img,SE);
imgD = imdilate(img,SE);
dif = imgE-imgD;

figure(1)
subplot(3,2,1:2);
imshow(img);
title('oryginal');
subplot(3,2,3);
imshow(imgE)
title('erozja')
subplot(3,2,4);
imshow(img-imgE)
title('roznica');
subplot(3,2,5);
imshow(imgD);
title('dylatacja '); 
subplot(3,2,6)
imshow(img-imgD) 
title('roznica')
figure(2)
subplot(2,2,1:2)
imshow(img);
title('oryginal');
subplot(2,2,3);
imshow(imopen(img,SE))
title('otwarcie - tlumienie jasnych ')
subplot(2,2,4);
imshow(imclose(img,SE));
title('zamkniecie - tlumienie ciemnych' )

figure(3);
subplot(2,2,1:2)
imshow(img)
title('oryginal');
subplot(2,2,3)
imshow(imtophat(img, SE))
title('tophat');
subplot(2,2,4);
imshow(imbothat(img, SE))
title('bottom hat');


img = imread('rice.png');
SE = strel('disk', 10);
subplot(2,2,1:2);
imshow(img);
title('oryginal')
subplot(2,2,3);
imshow(imtophat(img, SE));
title('top hat');
subplot(2,2,4);
imshow(imbothat(img, SE));
title('bottom hat');