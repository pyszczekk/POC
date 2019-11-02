clc;
close all;
clearvars;

img = imread('rice.png');
%img = imread('katalog.bmp');
[X, Y] = size(img);
imgBW = img;
W=255;

%loalna
for i=1:X
    for j=1:Y
       m = meanLT(i,j,floor(W/2),img,X,Y);
       if img(i,j) > m
            imgBW(i,j) = 255;
        else
            imgBW(i,j) = 0;
        end
    end
end
figure(1);
subplot(1,2,1);
imshow(img)
subplot(1,2,2);
imshow(imgBW)


% Sauvoli
imgS = img;
R=128;
k=0.05;
for i=1:X
    for j=1:Y
       m = meanLT(i,j,floor(W/2),img,X,Y);
        sd = stddevLT(i, j, floor(W/2), img, m, X, Y);
        t = m * (1 + k *(sd/R - 1));
       if img(i,j) > t
            imgS(i,j) = 255;
        else
            imgS(i,j) = 0;
        end
    end
end
    
figure(2);
subplot(1,2,1);
imshow(img)
subplot(1,2,2);
imshow(imgS)