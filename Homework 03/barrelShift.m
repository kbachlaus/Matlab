
function [out]= barrelShift(vec, n)
 
m = mod(n, length(vec));
%to get the remainder (the number to shift by)
C = ( 1 : length(vec))- m;
%
C1 = C (C<1) + length(vec);
%
C2 = [ C1, C(C>=1)];
% concatenates both C1 and C (when C is greater than and equal to 1) 
out = vec(C2);

end