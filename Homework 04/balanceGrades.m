function [newarr]= balanceGrades(arr, num)

arrm = mean( mean(arr));
% the first mean takes in arr and returns a vector of the mean of the
% colums. Hence, to find the mean of the whole array, we take the mean of
% the mean. 
difference = num - arrm;
% by subtracting arrm by the num, we find the difference needed to add to
% the array.
newarr = arr + difference ;
%This creates the new array that has a mean of num. 

end
