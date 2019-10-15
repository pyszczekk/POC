function [p px py pxy] = pochodne(A, image)
X1 = A(1)-1;
X2 = A(1)+1;
Y1 = A(2)-1;
Y2 = A(2)+1;
[YY XX] = size(image);
if X1 == 0
    X1=1;
end
if X2 >= XX
    X2 = XX-1;
end
if Y1 == 0 
    Y1=1;
end
if Y2 >= YY
    Y2=YY-1;
end
    
p = image(A(1), A(2));
px = (image(X2, A(2)) - image(X1, A(2))) / 2;
py = (image(A(1), Y2) - image(A(1), Y1)) / 2;
pxy = (image(X2, Y2) - image(X1, A(2)) - image(A(1), Y1) + image(A(1), A(2))) / 4;

end