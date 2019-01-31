function [code]= caesar(str, num)

m = mod(num, 26);
%This finds the mod, so if the number of shifts is greater than 26, a shift
%of 28 would become a shift of 2. 
firstlog= (str<='z' & str>='a');
% This finds the places in str where the lower case alphabets are present.
secondlog = (str<='Z' & str>='A');
%This finds the places in str where the upper case alphabets are present.
str(firstlog) = char(str(firstlog)+m); 
%the code above and below add the number of shifts to the elements of the
%string, which turns it into a double, hence we use the char funtion to
%convert it back into a string.
str(secondlog) = char(str(secondlog)+m); 

thirdlog = str>'Z' & str<'a';
%This finds all the symbols in between captial Z and lowercase a.
str(thirdlog) = char(str(thirdlog)-26);
%this subtracts the number of alphabets from the ascii code of the symbols.
% eg. a number two more than 'Z' would be the 2nd element from the start of
% 'A'.

%The same logic applies below for the symbols above lower case z.

fourthlog = str>122;

str(fourthlog) = char(str(fourthlog)-26);

code =str;

end

