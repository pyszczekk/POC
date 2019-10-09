close all;
img = imread('lena.bmp');
figure();
imshow(imresize(img,0.5), 'InitialMagnification', 200);

figure();
imshow(imresize(img,0.25), 'InitialMagnification', 400);

figure();
imshow(imresize(img,0.125), 'InitialMagnification', 800);