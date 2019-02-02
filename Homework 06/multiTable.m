
function [out]= multiTable(num)
header= 0:num ;
%creats a vector from zero till the num
vec = [header];
out = vec;
%assigns a value to output

for index = 1:num  %creates a loop from value of index 1 to num
    A = index .*(0:num) ;%multiplies a number into the header vector
    vec = [vec; A]; %vertically concatenates the header vector with the multiplied vector A
end

vec(1, :) = header; %Just reassings the horizontal and vertical headers
vec(:, 1) = header;
out = vec;
end

