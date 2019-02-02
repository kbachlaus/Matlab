function [new]=myReshape(arr, r, c)
array=[];
ray=[];
a=1 ;
arr=arr' ;%transposes the vector
arr=arr(:); %gets a column vector of all the elements in index order
bigs=length(arr) ;%length of arr
iters=bigs./r ;%the number of columns
for i=1:(iters) % from 1 till column number
    array=arr(a:r*i); %indexes positions of arr into array.
    ray=[ray array]; %horizontal concatenation
    a=a+r; %changes the value of the a so it works in line 10.
end
new=ray;
end