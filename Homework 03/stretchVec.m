
function [vecC] = stretchVec (vecA, n)
a = round( length(vecA).* n) ;
% a finds the length of the output vector (the answer). The value of n can
% be a fraction, hencce to find the integral value, we need to use the
% round function. This will allow the length of the vector to strech or
% shrink. 
b = round (linspace (1, length(vecA), a)) ;
% the linspace equally spaces the vector from the beginning to the length of vecA into a elements. 
vecC = vecA(b) ;
%this assigns the value of vecA with the elements of b into vecC
end
