close all;
clearvars;
clc;

img = imread('knee.png');

figure(1);
imshow(img);
title('oryginal');
%[x, y] = ginput(1);
%x = floor(x);
%y = floor(y);
x=340;
y=250;

img = double(img);

[X, Y] = size(img);

visited = zeros(X, Y);
segmented = zeros(X, Y);

stack = zeros(10000, 2);
iStack = 1;

visited(x, y) = 1;
segmented(x, y) = 1;

stack(iStack, 1:2) = [x, y];

tollerance = 40;
nS = 0;
mV = 0;
while iStack > 0
    px = stack(iStack, 1);
    py = stack(iStack, 2);
    iStack = iStack-1;
    nS =nS + 1;
    mV = (mV * (nS - 1) + img(px, py)) / nS;
    if px > 1 && px < X && py > 1 && py < Y
        for ix = px-1:px+1
            for iy = py-1:py+1
                if ix~=px && iy~=py && visited(ix,iy)==0 && ((abs(img(ix,iy) - mV)) < tollerance)
                    iStack=iStack+1;
                    stack(iStack, :) = [ix, iy];
                    segmented(ix,iy) = img(ix,iy);
                elseif ix==px && iy==py
                    segmented(ix,iy) = img(ix,iy);
                end
                visited(ix,iy)=1;
            end
        end    
    end
end

figure(2);
imshow(segmented,[]);
title('segmentacja');
