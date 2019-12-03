close all;
clearvars;
clc;



img = imread('dom.png');
figure(1);

% binarise
gl=graythresh(img)
thresh = multithresh(img)
%img = im2bw(img,1/255);

% czyszczenie krawedzi
%img = not(img);
img = imclearborder(img);
%img = not(img);

% delete vertical lines
square = strel('square', 5);
img = imclose(img, square);

imshow(img);

% krawedzie
edges = edge(img, 'canny');

[H, T, R] = hough(edges);

figure(2);
imshow(H, []);
P = houghpeaks(H, 6);
hold on;
plot(P, 'o');

lines = houghlines(edges, T, R, P, 'FillGap', 5, 'MinLength', 7);
figure(3);
imshow(edges);
hold on
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
