close all;
clearvars;
clc;

img = imread('tekstReczny.png');

figure(1);
subplot(2,1,1)
imshow(img);
title("oryginal");
subplot(2,1,2);
imhist(img);
title("histogram");

r = 27; %prog recznie
otsu = graythresh(img); %prog otsu

%binearyzacja
figure(2);
subplot(1,3,1);
imshow(img);
title("oryginal");
subplot(1,3,2);
imshow(im2bw(img,r/255));
title(["binearyzacja recznie, prog - ", num2str(r)])
subplot(1,3,3);
imshow(im2bw(img,otsu));
title(["binearyzacja otsu, prog - ", num2str(otsu*255)])



%binearyzacja za pomoca sredniej ruchomej
N = 20;
a = 0.5;
[X Y]=size(img);
imgBW = img;
for i=1:X
    array = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
    mk=0;
    for j=1:Y
        m=0;
        z=mk +(1/N)*(array{N}-array{1});
        array=array(2:N);
        array{N}=z;
        for k=1:N
            m=m+array{k};
        end
        m=m/N;
        t = a*m;
        if img(i,j) > t
            imgBW(i,j) = 255;
        else
            imgBW(i,j) = 0;
        end
        mk=m;
    end
    
end

figure(3);
subplot(1,2,1);
imshow(img);
title('oryginal');
subplot(1,2,2);
imshow(imgBW)
title('binearyzacja z srednia ruchoma');

    