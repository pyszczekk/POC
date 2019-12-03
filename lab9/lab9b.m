close all;
clearvars;
clc;

img = imread('kwadraty.png');
edge = edge(img, 'Sobel');
figure(1)
subplot(1,2,1);
imshow(img);
title('kwadraty');
subplot(1,2,2);
imshow(edge);
title('krawedzie-sobel');


[H,theta,rho] = hough(edge);
P = houghpeaks(H, 8);

figure;
imshow(H, []);

P = houghpeaks(H, 8);
hold on;
plot(P, 'o');

lines = houghlines(edge, theta, rho, P, 'FillGap', 5, 'MinLength', 7);
figure, imshow(edge), hold on
max_len = 0;
for k = 1:length(lines)
   xy = [lines(k).point1; lines(k).point2];
   plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');

   % Plot beginnings and ends of lines
   plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');
   plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red');

   % Determine the endpoints of the longest line segment
   len = norm(lines(k).point1 - lines(k).point2);
   if ( len > max_len)
      max_len = len;
      xy_long = xy;
   end
end

% highlight the longest line segment
plot(xy_long(:,1),xy_long(:,2),'LineWidth',2,'Color','cyan');
