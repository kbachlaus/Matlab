function [out]= arrayUnfold(arr)

arr1 = arr(:,end:-1:1);
% This reverses the array row wise, by reversing the elements from right to
% left. 
arr2 = [arr arr1];
%This concatenates the new array (arr1) with the orginal one, to get a mirror image
%in the y axis.
arr3 = arr2( end:-1:1, 1:end);
% This reverses the array column wise, by reversing the elements from
% bottom to top. 
arr4 = [ arr2; arr3];
% This concatenates the new array (arr3) with arr2. Allowing the mirror
% image to be taken in the x axis.
out = arr4;
%This outputs the output as arr4. 
end
