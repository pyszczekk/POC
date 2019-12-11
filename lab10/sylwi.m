close all;
clearvars;
clc;

img = imread('knee.png');

figure(1);
imshow(img);
title('oryginal');
wsp = floor(ginput(1));
wsp =[340,250]
img = double(img);

[X, Y] = size(img);

visited = zeros(X, Y);
segmented = zeros(X, Y);

stack = zeros(10000, 2);
iStack = 1;

visited(wsp(1), wsp(2)) = 1;
segmented(wsp(1), wsp(2)) = 1;

stack(iStack, 1:2) = [wsp(1), wsp(2)];

t = 40;
nS = 0;
mV = 0;
while iStack > 0
    cX = stack(iStack, 1);
    cY = stack(iStack, 2);
    iStack = iStack - 1;
    nS = nS + 1;
    mV = (mV * (nS - 1) + img(cX, cY)) / nS;
    
    if cX > 1 && cX < X && cY > 1 && cY < Y
        for i = cX-1:cX+1
            for j = cY-1:cY+1
                if i ~= cX && j ~= cY && visited(i,j) == 0 && ((abs(img(i,j) - mV)) < t)
                    iStack = iStack + 1;
                    stack(iStack, :) = [i, j];
                    segmented(i,j) = img(i,j);
                elseif i==cX && j==cY
                    segmented(i,j) = img(i,j);
                end
                visited(i,j)=1;
            end
        end    
    end
end

figure(2);
imshow(segmented,[]);
title('segmentacja');