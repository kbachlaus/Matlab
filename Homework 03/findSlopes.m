function [out]= findSlopes(x, y)
x1 = x (1: (end - 1)) ; 
x2 = x(2:end) ;
% x1 is a vector that is from the first element to the second last element.
% (It is meant to be subtracted from x2)
%x2 is a vector that starts from element two to the last element. 

y1 = y( 1: (end-1)) ;
y2 = y( 2: end) ;

out = (y2 - y1) ./ (x2 -x1) ;
%we take the values of the x's and y's, and subsitute them into the
%gradient formula to get the slope.
end