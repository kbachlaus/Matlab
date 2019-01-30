function [rtp rtn]= quadratic(A, B, C)

discrim = sqrt((B .^ 2) - (4 .* A .* C)) ;
%this uses the mathematical formula of a discriminant to find discrim.

rtp = ( -B + discrim) ./ (2 .* A) ;
%using the manual formula to calculate the positive and negative root,
%rtpositive and rtnegative are calculated. 

rtn = ( -B - discrim) ./ (2 .* A) ;

end 