close all;
clearvars;
clc;

img = imread('ccl1.png');
figure(1);
imshow(img);

%indeksowanie
[height, width] = size(img);
L = 1;
N = 100;
id = 1:N;
lut = zeros(N);

for y = 2 : (height-1)
    for x = 2 : (width-1)
        if img(y, x) == 255
           sasiedzi = [img(y-1,x-1) img(y-1,x) img(y-1,x+1) img(y,x-1)];
           suma = sum(sasiedzi);
           if suma == 0
              img(y, x) = L;
              L = L+1;
           elseif suma > 0
              nonzero = nonzeros(sasiedzi);
              min_ = min(nonzero);
              max_ = max(nonzero);
              if min_ == max_
                 img(y, x) = min_;
              else
                 img(y, x) = min_;
                 minsasiedzi = nonzero(nonzero~=min_);
                 minimalNeighbor = min(minsasiedzi);
                 
                 id = union(min_, minimalNeighbor, id);
             end
          end 
      end
   end
end

imCopy = img;

    for i = 1:N
        startId=i;
        while startId ~= id(startId)
            startId = id(startId);
        end
        lut(i) = startId;
    end
    
    for y = 2:(height-1)
        for x = 2:(width-1)
           if (img(y,x) > 0)
             img(y,x) = lut(imCopy(y,x));
           end
        end
     end
     
     figure;
     subplot(1,2,1);
     imshow(imCopy, []);
     title('before lut op');
     subplot(1,2,2);
     imshow(img, []);
     title('after lut op');