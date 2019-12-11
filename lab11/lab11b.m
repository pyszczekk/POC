close all;
clearvars;
clc;

img = imread('ccl1.png');
figure(1);
imshow(img);

%indeksowanie
[YY, XX] = size(img);
L = 1;
N = 100;
id = 1:N;
lut = zeros(N);

for y = 2 : (YY-1)
    for x = 2 : (XX-1)
        if img(y, x) ~= 0
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
                 
                 id = union(min_, max_, id);
             end
          end 
      end
   end
end


imCopy = img;

    for i = 1:N
        startId=root(i,id);
        lut(i) = startId;
    end
    
    for y = 2:(YY-1)
        for x = 2:(XX-1)
           if (img(y,x) > 0)
             img(y,x) = lut(imCopy(y,x));
           end
        end
     end
     
     figure(2);
     subplot(1,2,1);
     imshow(imCopy, []);
     title('przed lut');
     subplot(1,2,2);
     imshow(img, []);
     title('po lut');