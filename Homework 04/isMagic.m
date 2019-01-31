function [arr3] = isMagic(arr1)

[~, N] =size(arr1);
% This will give the dimensions of the arr1. N is the number of rows.
MagicNum = (N.*(N^2 + 1))./2;
%Using the formula given for the magic number, we find the value of the
%magic number using the dimension N. 
check_sum = all(sum(arr1) == MagicNum);
%This checks if all of the columns have a mean value the same as MagicNum.
check_othersum = all(sum(arr1')' == MagicNum);
%This checks if all of the rows have a mean value the same as MagicNum.
check_diag = sum(diag(arr1))== MagicNum;
%This checks if the mean of the major diagonal of the array is the same as the
%MagicNum. diag
check_otherdiag = sum(diag(arr1(: , end:-1:1))) == MagicNum;
%This checks if the mean of the minor diagonal of the array is the same as
%the MagicNum. 
inorder = sort(arr1(:)) ;
%this first creates a column vector of all the elements in the array, then
%it sorts all the elements by their value. 
inorder = reshape (inorder, N, N);
% this reshapes in order to the same dimension as the original array(arr1).
newvec = 1:(N^2);
%this creates a vector from 1 till the length of N squared.
newvec = reshape (newvec, N, N);
%This reshapes newvec to the same shape as arr1.
arr2 = all(all((newvec==inorder)));
%This compares the indorder with newvec, to see if all the elemtns are the
%same or not. The output is a logical of true or false. 
arr3 = all([check_sum check_othersum check_diag check_otherdiag arr2]);
%This checks if all the the elemtents in the vector are true. 
end 