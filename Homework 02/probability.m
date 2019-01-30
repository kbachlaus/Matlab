function [red1 grn1]= probability(red, grn, predr, pgrnr)

% Calculation of the number of non-rotten red and green apples (two
% separate outputs).

red1 = ((red - (red .* predr ./ 100)) ./ ( red + grn)) .* 100;
%  this calculates the non-rotten number of red apples by subracting
% the number of red rotten apples from the number of red apples in total. Which
% is then divided by the total number of apples in the bag (red and green
% apples) and multiplied by hundred. 

grn1 = ((grn - (grn .* pgrnr ./ 100)) ./ (grn + red)) .* 100;
% this calculates the non-rotten number of green apples by subracting
% the number of green rotten apples from the number of green apples in total. Which
% is then divided by the total number of apples in the bag (red and green
% apples)

end