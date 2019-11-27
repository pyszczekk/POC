close all;
clearvars;
clc;

img = imread('dom.png');

% log

figure(1);
subplot(1,2,1)
imshow(img)
title('oryginal');
subplot(1,2,2);
imshow(edge(img, 'log'))
title('detekcja krawedzi - log');


% canny

figure(2);
subplot(1,2,1)
imshow(img)
title('oryginal');
subplot(1,2,2);
imshow(edge(img, 'canny',[0.01,0.07]))
title('detekcja krawedzi - canny');

%dobor reczny
figure(3)
subplot(2,3,1);
imshow(edge(img, 'log'))
subplot(2,3,2)
imshow(edge(img, 'canny'))
subplot(2,3,3);
imshow(edge(img, 'Sobel'))
subplot(2,3,4)
imshow(edge(img, 'log',0.003,2))
subplot(2,3,5)
imshow(edge(img, 'canny',[0.02,0.06],1.5))
subplot(2,3,6)
imshow(edge(img, 'Sobel',0.1))