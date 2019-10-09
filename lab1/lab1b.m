lena = imread('lena_gray.bmp')
[X, map] = gray2ind(lena, 256);
imshow(X,map);
figure();
map =colormap(jet(256));
imshow(X,map);