close all;
img1 = imread('parrot.bmp');
img2 = imread('chessboard.bmp');
img3 = imread('clock.bmp');

figure(1);
imshow(img1);
title('oryginal');


figure(2)
imshow(imresize(img1, 2, 'nearest'));
title('sasiada');

figure(3)
imshow(imresize(img1, 1.3, 'bilinear'));
title('dwuliniowa');
figure(4)
imshow(imresize(img1, 2.3, 'bicubic'));
title('dwuszescienna');

figure(5);
imshow(img2);
title('oryginal');
figure(6)
imshow(imresize(img2, 2, 'nearest'));
title('sasiada');
figure(7)
imshow(imresize(img2, 1.3, 'bilinear'));
title('dwuliniowa');
figure(8)
imshow(imresize(img2, 2.3, 'bicubic'));
title('dwuszescienna');



figure(9);
imshow(img3);
title('oryginal');
figure(10)
imshow(imresize(img3, 2, 'nearest'));
title('sasiada');
figure(11)
imshow(imresize(img3, 1.3, 'bilinear'));
title('dwuliniowa');
figure(12)
imshow(imresize(img3, 2.3, 'bicubic'));
title('dwuszescienna');


