close all;
imfinfo 'lena.jpg'
imfinfo 'lena.bmp'

img1 = imread('lena.jpg');
img2 = imread('lena.bmp');

imshow(img1);

figure();

imshow(img2);
grayLena = rgb2gray(img2);

figure();
imshow(grayLena);
imwrite(grayLena, 'lena_gray.bmp');

figure();
colormap gray;
mesh(grayLena)

figure();
plot(grayLena(10,:));

figure();
plot(grayLena(:,10));
