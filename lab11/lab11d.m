clearvars;
clc;
close all;

img = imread('shapes.png');
imgL = bwlabel(img,4);
figure(1);
subplot(2,2,1:2)
imshow(img,[])
title('oryginal');
subplot(2,2,3)
imshow(imgL)
title('label')

w=obliczWspolczynniki(imgL);

r=regionprops(imgL,'Centroid');
for i=1:length(r)
    text(r(i).Centroid(1),r(i).Centroid(2),['\color{magenta}',num2str(i)]);
end


[x, y]=size(imgL);
for i=1:x
    for j=1:y
        piksel = imgL(i,j);
        if(piksel ~= 0 && ~(w(piksel,2) > 0.33 && w(piksel,2) < 0.66))
            imgL(i,j)=0;
        end
    end
end
subplot(2,2,4)
imshow(imgL)
title('po usunieciu');



img = imread('shapesReal.png')
figure(2)
subplot(2,2,1)
imshow(img)
title('oryginal')

img = im2bw(img,0.22);
img = imerode(img,strel('rectangle',[3,3]));
img = not(img);

subplot(2,2,2)
imshow(img)
title('bw')

imgL = bwlabel(img,4)
subplot(2,2,3)
imshow(imgL)
title('labeled')
w=obliczWspolczynniki(imgL);

r=regionprops(imgL,'Centroid');
for i=1:length(r)
    text(r(i).Centroid(1),r(i).Centroid(2),['\color{magenta}',num2str(i)]);
end


[x, y]=size(imgL);
for i=1:x
    for j=1:y
        piksel = imgL(i,j);
        if(piksel ~= 0 && ~(w(piksel,2) > 0.6 && w(piksel,2) < 0.68 && w(piksel,3)>4.5))
            imgL(i,j)=0;
        end
    end
end
subplot(2,2,4)
imshow(imgL)
title('po usunieciu');


