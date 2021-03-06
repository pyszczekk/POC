function split(image, xS, yS, xE, yE)
    global sLimit vLimit segRes index MRes
    
    subImage = image(yS:yE,xS:xE);
    m = mean(subImage(:));
    s = std(subImage(:));
    
    if (s < vLimit) || ((xE - xS) <= sLimit)
        index=index + 1;
        segRes(yS:yE, xS:xE) = index;
        MRes(yS:yE, xS:xE) = m;
    else
        splitX = floor((xE + xS) / 2);
        splitY = floor((yE + yS) / 2);
        
        % i kolejne 4 podobrazy 
        split(image, xS, yS, splitX, splitY);
        split(image, splitX + 1, yS, xE, splitY);
        split(image, splitX + 1, splitY + 1, xE, yE);
        split(image, xS, splitY + 1, splitX, yE);
    end
end