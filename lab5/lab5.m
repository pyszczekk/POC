clc;
close all;
clearvars;

img = imread('coins.png');

figure(1);
subplot(2,1,1)
imshow(img);
subplot(2,1,2);
imhist(img);


img2 = im2bw(img,75/255);
figure(2);
imshow(img2);


fig = imread('figura.png');
figure(3);
subplot(2,1,1)
imshow(fig);
subplot(2,1,2);
imhist(fig);

fig2 = imread('figura2.png');
figure(4);
subplot(2,1,1)
imshow(fig2);
subplot(2,1,2);
imhist(fig2);

fig3 = imread('figura3.png');
figure(5);
subplot(2,1,1)
imshow(fig3);
subplot(2,1,2);
imhist(fig3);


fig4 = imread('figura4.png');
figure(6);
subplot(2,1,1)
imshow(fig4);
subplot(2,1,2);
imhist(fig4);

figure(7);
subplot(6,1,1)
imshow(im2bw(img,75/255));
title(['recznie - ', num2str(75)]);
subplot(6,1,2);
imshow(im2bw(img,graythresh(img)));
title(['Otsu - ',num2str(graythresh(img)*255)]);
subplot(6,1,3)
imshow(im2bw(img,clusterKittler(img)/255));
title(['Kittler - ',num2str(clusterKittler(img))])
subplot(6,1,4)
imshow(im2bw(img,entropyYen(img)/255));
title(['Yen - ', num2str(entropyYen(img))])
subplot(6,1,5)
imshow(img);
title('oryginal');
subplot(6,1,6);
imhist(img);
title('histogram oryginalu');

%entropyYen(img)

img=imread('rice.png');
figure(8);
subplot(6,1,1)
imshow(im2bw(img,125/255));
title(['recznie - ', num2str(125)]);
subplot(6,1,2);
imshow(im2bw(img,graythresh(img)));
title(['Otsu - ',num2str(graythresh(img)*255)]);
subplot(6,1,3)
imshow(im2bw(img,clusterKittler(img)/255));
title(['Kittler - ',num2str(clusterKittler(img))])
subplot(6,1,4)
imshow(im2bw(img,entropyYen(img)/255));
title(['Yen - ', num2str(entropyYen(img))])
subplot(6,1,5)
imshow(img);
title('oryginal');
subplot(6,1,6);
imhist(img);
title('histogram oryginalu');



img=imread('tekst.bmp');
figure(9);
subplot(6,1,1)
imshow(im2bw(img,185/255));
title(['recznie - ', num2str(185)]);
subplot(6,1,2);
imshow(im2bw(img,graythresh(img)));
title(['Otsu - ',num2str(graythresh(img)*255)]);
subplot(6,1,3)
imshow(im2bw(img,clusterKittler(img)/255));
title(['Kittler - ',num2str(clusterKittler(img))])
subplot(6,1,4)
imshow(im2bw(img,entropyYen(img)/255));
title(['Yen - ', num2str(entropyYen(img))])
subplot(6,1,5)
imshow(img);
title('oryginal');
subplot(6,1,6);
imhist(img);
title('histogram oryginalu');



img=imread('obiekty.bmp');
figure(10);
subplot(6,1,1)
imshow(im2bw(img,177/255));
title(['recznie - ', num2str(177)]);
subplot(6,1,2);
imshow(im2bw(img,graythresh(img)));
title(['Otsu - ',num2str(graythresh(img)*255)]);
subplot(6,1,3)
imshow(im2bw(img,clusterKittler(img)/255));
title(['Kittler - ',num2str(clusterKittler(img))])
subplot(6,1,4)
imshow(im2bw(img,entropyYen(img)/255));
title(['Yen - ', num2str(entropyYen(img))])
subplot(6,1,5)
imshow(img);
title('oryginal');
subplot(6,1,6);
imhist(img);
title('histogram oryginalu');

img=imread('katalog.bmp');
figure(11);
subplot(6,1,1)
imshow(im2bw(img,125/255));
title(['recznie - ', num2str(125)]);
subplot(6,1,2);
imshow(im2bw(img,graythresh(img)));
title(['Otsu - ',num2str(graythresh(img)*255)]);
subplot(6,1,3)
imshow(im2bw(img,clusterKittler(img)/255));
title(['Kittler - ',num2str(clusterKittler(img))])
subplot(6,1,4)
imshow(im2bw(img,entropyYen(img)/255));
title(['Yen - ', num2str(entropyYen(img))])
subplot(6,1,5)
imshow(img);
title('oryginal');
subplot(6,1,6);
imhist(img);
title('histogram oryginalu');


