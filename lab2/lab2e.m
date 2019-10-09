close all;

img = imresize(imread('lena.bmp'),0.25);

figure()
imshow(img);

figure();
imshow(imadjust(img, [],[0 31/256]),[])

figure();
imshow(imadjust(img, [],[0 15/256]),[])

figure();
imshow(imadjust(img, [],[0 7/256]),[])

figure();
imshow(imadjust(img, [],[0 3/256]),[])

figure();
imshow(imadjust(img, [],[0 1/256]),[])