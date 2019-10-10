clearvars;
close all;
clc;

img = imread('clock.bmp');


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
        i=floor(ii*xStep);
        j=floor(jj*yStep);
        
        if i>=XX-2
            i=XX-3;
        end
        if j>=YY-2
            j=YY-3;
        end
            
        A = double(img(j+1,i+1));
        B = double(img(j+1, i+2));
        C = double(img(j+2, i+1));
        D = double(img(j+2, i+2));
        i0 = ii*xStep -i;
        j0 = jj*yStep - j;
       % newImg(jj+1, ii+1) =A*(0-j)*(0-i)+B*(i+1)*(0-j)+C*(i+1)*(j+1)+D*(j+1)*(0-i);
        newImg(jj+1,ii+1)=[1-i0 i0]*[A D; B C]*[1-j0; j0];
   end    
end

figure();
imshow(img)
figure();
imshow(uint8(newImg))
