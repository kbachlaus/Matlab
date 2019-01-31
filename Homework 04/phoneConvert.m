 function [out]= phoneConvert(str)
 
lplaces = (str<= 'Z' & str>= 'A');
% finds a logical of the places where the capital alphabets are present in
% the string str. 
letters = str(lplaces);
% this gets a vector of the capital letters in the str. 
letters(letters>='A' & letters<='C')='2' ;
letters(letters>='D' & letters<='F')='3' ;
letters(letters>='G' & letters<='I')='4' ;
letters(letters>='J' & letters<='L')='5' ;
letters(letters>='M' & letters<='O')='6' ;
letters(letters>='P' & letters<='S')='7' ;
letters(letters>='T' & letters<='V')='8' ;
letters(letters>='W' & letters<='Z')='9' ;
%These account for the letters that correspond to each number from 2-9 on
%the telephone. 
 
letters = [ letters(1:3) '-' letters(4:7)];
%this concatenates the index of the first three elements of letters with a
%dash and the index of the 4th to 7th element of letters. 
other= str(~lplaces);
% this takes all the places where there was NOT an alphabet and finds the
% elements of those positions in str. 
out = [ other letters];
%This concatenates the non alphabetical elements and the changed letters. 

 end 
