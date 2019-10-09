clearvars;
close all;
clc;

img = imread('clock.bmp');

figure();
imshow(img);


xReScale=2.5;
yReScale=1.5;

[YY,XX]=size(img);
nYY = round(YY*yReScale);
nXX = round(XX*xReScale);

newImg = uint8(zeros(nYY, nXX));

xStep = XX/nXX;
yStep = YY/nYY;

for jj = 0:(nYY-1)
   for ii=0:(nXX-1)
        i=round(ii*xStep);
        j=round(jj*yStep);
        if i>=XX
            i=XX-1;
        end
        if j>=YY
            j=YY-1;
        end
        newImg(jj+1,ii+1) = img(j+1,i+1);
   end    
end

figure();
imshow(newImg)
