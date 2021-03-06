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
imshow(bilateral(I_noisefree, [3, 3],1), [])
title('bilateral')

figure(2);
subplot(1,3,1)
imshow(I_noisy1,[])
title('oryginal');
subplot(1,3,2);
imshow(convolution(I_noisy1, [3, 3]), []);
title('convolution');
subplot(1,3,3)
imshow(bilateral(I_noisy1, [3, 3],7), [])
title('bilateral')

figure(3);
subplot(1,3,1)
imshow(I_noisy2,[])
title('oryginal');
subplot(1,3,2);
imshow(convolution(I_noisy2, [3, 3]), []);
title('convolution');
subplot(1,3,3)
imshow(bilateral(I_noisy2, [3, 3],100), [])
title('bilateral')


figure(4);
subplot(1,3,1)
imshow(I_noisy3,[])
title('oryginal');
subplot(1,3,2);
imshow(convolution(I_noisy3, [3, 3]), []);
title('convolution');
subplot(1,3,3)
imshow(bilateral(I_noisy3, [3, 3],5), [])
title('bilateral')

figure(5);
subplot(1,3,1)
imshow(I_noisy4,[])
title('oryginal');
subplot(1,3,2);
imshow(convolution(I_noisy4, [3, 3]), []);
title('convolution');
subplot(1,3,3)
imshow(bilateral(I_noisy4, [3, 3],15), [])
title('bilateral')
