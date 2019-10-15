%Karolina Pieszczek, zadanie domowe - lab2
clearvars;
close all;
clc;

load('a1.mat');


img = imread('parrot.bmp');


xReScale=2.5;
yReScale=2.5;

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
            i=XX-2;
        end
        if j>=YY-2
            j=YY-2;
        end
            
       A = double(img(j+1,i+1));
        B = double(img(j+1, i+2));
        C = double(img(j+2, i+1));
        D = double(img(j+2, i+2));
        i0 = ii*xStep -i;
        j0 = jj*yStep - j;
        
        [pA pAx pAy pAxy] = pochodne([j+1 i+1], img);
        [pB pBx pBy pBxy] = pochodne([j+1 i+2], img);
        [pC pCx pCy pCxy] = pochodne([j+2 i+2], img);
        [pD pDx pDy pDxy] = pochodne([j+2 i+2], img);
        
       % newImg(jj+1, ii+1) =A*(0-j)*(0-i)+B*(i+1)*(0-j)+C*(i+1)*(j+1)+D*(j+1)*(0-i);
        co = [pA; pB; pD; pC; pAx; pBx; pDx; pCx; pAy; pBy; pDy; pCy; pAxy; pBxy; pDxy; pCxy ];
        a = A1 * double(co);%wspolczynnik
        aCo = [a(1) a(5) a(9) a(13); a(2) a(6) a(10) a(14); a(3) a(7) a(11) a(15); a(4) a(8) a(12) a(16)];
       
        newImg(jj+1, ii+1) = [1 j0 j0^2 j0^3] * aCo * [1; i0; i0^2; i0^3];
   end    
end

figure();
imshow(img)
figure();
imshow(uint8(newImg))