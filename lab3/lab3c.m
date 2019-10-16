I  = imread('lena.bmp');
J = imlincomb(1.5,I);
K = imlincomb(1,I,-1,J,128); %K(r,c) = I(r,c) - J(r,c) + 128
figure(3)
subplot(3,1,1)
title('original')
imshow(I);
subplot(3,1,2);

imshow(J);
title('1.5');
subplot(3,1,3)
imshow(K);
title('K(r,c) = I(r,c) - J(r,c) + 128');

