close all;
clearvars;
clc;

load MR_data.mat;

figure(1);
subplot(1,3,1)
imshow(I_noisefree,[])
title('oryginal');
subplot(1,3,2);
imshow(convolution(I_noisefree, [3, 3]), []);
title('convolution');
subplot(1,3,3)
imshow(bilateral(I_noisefree, [3, 3]), [])
title('bilateral')