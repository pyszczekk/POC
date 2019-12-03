close all;
clearvars;
clc;

img = zeros(11,11);

img(3,8)=1;
H = hough(img,'RhoResolution',0.1,'ThetaResolution',0.5);
img2=img;
img2(5,2)=1;
[H2,theta,rho] = hough(img2,'RhoResolution',0.1,'ThetaResolution',0.5);

img2(6,9) = 1;
img2(9,1) = 1;
[H3, theta, rho] = hough(img2,'RhoResolution',0.1,'ThetaResolution',0.5);

figure(1)
subplot(1,4,1);
imshow(img,[]);
title('obrazek z jedna 1');

subplot(1,4,2);
imshow(H,[]);
title('hough dla 1 pkt=1');

subplot(1,4,3);
imshow(H2,[])
title('hough dla 2 punktow = 1');

subplot(1,4,4)
imshow(H3,[]);
title('hough dla 4 pkt');

T = 47;
R = 128;

p=rho(R);
x = 0:0.1:10;
y = (p - x * cosd(theta(T))) / sind(theta(T));
figure(2);
imshow(img2); 
hold on;
plot(x+1,y+1);

