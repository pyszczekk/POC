close all;
clearvars;
clc;

img = imread('umbrealla.png');

figure(1);
subplot(2,2,1)
imshow(img);
title('oryginal');


img = rgb2hsv(img);
imgH = double(img(:,:,1));

subplot(2,2,2);
imshow(imgH);
title('H');

global sLimit vLimit MRes segRes index; % do split
sLimit = 4;
vLimit = 0.01;
index = 1

[y, x] = size(imgH);

segRes = zeros(y, x);
MRes = zeros(y, x);

split(imgH, 1, 1, x, y);

colorThreshold = 5/255;
minAreaSize = 20;

i = 0;
while i <= index
   IB = segRes == i;
   
   if any(IB(:))
       [yF, xF] = find(IB, 1, 'first');
       
       square = strel('square', 3);
       neighbors = imdilate(IB, square);
       diff = imabsdiff(neighbors, IB);
       pointMult = diff .* segRes;
       nonZeros = nonzeros(pointMult);
       uniqued = unique(nonZeros);
       
       isJoined = 0;
       for neighbor = 1:numel(uniqued)
           IBS = segRes == uniqued(neighbor);
           
           [yFS, xFS] = find(IBS, 1, 'first');
           
           colorDiff = abs(MRes(yF,xF) - MRes(yFS, xFS));
           if colorDiff < colorThreshold
               segRes(IBS) = i;
               isJoined = 1;
           end
       end
       if isJoined == 0
          i = i + 1;
       end
   else
       i = i + 1;
   end
end

subplot(2,2,3)
imshow(segRes,[]);
title('segRes');

U = unique(segRes);

for idx = 1:numel(U)
    C = segRes == U(idx);
    if sum(C) < minAreaSize
       segRes(C) = 0; 
    end
end

U = unique(segRes);

for idx = 1:numel(U)
    C = segRes == U(idx);
    segRes(C) = idx;
end
finalImage = label2rgb(segRes);

subplot(2,2,4);
imshow(finalImage,[]);
title('final')
