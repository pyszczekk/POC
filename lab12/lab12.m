close all;
clearvars;
clc;

img = imread('kwadrat45.bmp');


image=img;
fourier = fft2(image);

shifted = fftshift(fourier);
A = log10(abs(shifted)+1);
F = angle(shifted.*(A>0.0001));

figure(1);
subplot(2,2,1:2);
imshow(image);
title('original image');
subplot(2,2,3);
imshow(A, []);
title('amplitude');
subplot(2,2,4)
imshow(F, []);
title('phase');

%czy dwuwymiarowa transformata fouriera jest zlozeniem dwoch transformat
%jednowymiarowych? -- tak

F1 = fft(img,[],1);
F2= fft(F1,[],2);

figure(2)
subplot(1,2,1)
imshow(fourier)
title('fft2')
subplot(1,2,2)
imshow(F2)
title('zlozenie fft')


