close all;
clearvars;
clc;

img = imread('ccl2.png');

figure(1);
subplot(1,3,1)
imshow(img,[])
title('oryginal');
subplot(1,3,2);
imshow(bwlabel(img,4),[]);
title('bwlabel 4');
subplot(1,3,3);
imshow(bwlabel(img,8),[]);
title('bwlabel 8');