
function [a b]=myFind(vec, num)

numbers = 1:length(vec);
% the values from 1 to the length of the first input, is taken as the value
% of vecB. 
alogical = vec==num;
%this gets the logical of where the number five is in vec.
a= numbers(alogical);
%this gets the position as 'numbers' is indexed by the logical. Hence those
%positions that had true (1) in alogical, would be showing the
%corresponding number in numbers.
blogical = ~alogical;
%this gets a logical of where the number does NOT match in vec. alogical
%was negated to reverse the positions of the ones and zeros
b = vec(blogical);
%this gets actual values of what numbers did not match num.

end