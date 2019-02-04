function [ out] = nameGen( cellarray )

red= 1:length(cellarray{1}); %defines the length of red, the first cell in 
fin_out={}; 
fin_out1={};
%assigns an empty cell to the variables

for i= red %starts an for loop of length red
cellarray{1}{i}(2:end)= []; %takes the ith cell in the first cell, and the 2:end elements
if cellarray{1}{i}>65 & cellarray{1}{i}<90 %conditional statement 
    cellarray{1}{i}= char(cellarray{1}{i}+32); %turns into lower alphabet
end
if cellarray{2}{i}(1)>65 & cellarray{2}{i}(1)<90 %conditional
    cellarray{2}{i}(1)= char(cellarray{2}{i}(1)+32);%turns into lower case
end
end

cellarray{3}= num2str(cellarray{3}); %turns cell 3 into a string

cellarray{3}(strfind(cellarray{3},' '))='' 
for j= red %starts another for loop
    fin_out= {[cellarray{1}{j} cellarray{2}{j} cellarray{3}(j)]} %concatenates cells
    
    fin_out1(end+1)= fin_out; 
end

out= fin_out1; 

end

