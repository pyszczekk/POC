close all;

img = imresize(imread('lena.bmp'),0.25);

figure(1)
subplot(2,3,1)
imshow(img);
title("original");
subplot(2,3,2)
imshow(imadjust(img, [],[0 31/256]),[]);
title("0-31");
subplot(2,3,3)
imshow(imadjust(img, [],[0 15/256]),[]);
title("0-15");
subplot(2,3,4)
imshow(imadjust(img, [],[0 7/256]),[]);
title("0-7");
subplot(2,3,5)
imshow(imadjust(img, [],[0 3/256]),[]);
title("0-3");
subplot(2,3,6)
imshow(imadjust(img, [],[0 1/256]),[]);
title("0-1");

