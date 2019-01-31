function [arr1]= arrayReplace(arr1, arr2, num)

logplaces = arr1 == num;
%finds the logical of where the number is in the first array.
bplaces = arr2(logplaces);
%finds values in array 2 in positions given by logplaces(where the number
%is in array 1)
arr1(logplaces) = bplaces;
%this places the bplaces into the positions where the number matched in
%array 1. 
end
