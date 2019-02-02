function [l char num]=vectorBingo(arr, vec)
l=0 ; 
char=0 ; 
num=0 ; 
[r c ]= size(arr) ; %finds dimensions of arr
vec=sort(vec) ; %puts elements of vec in ascending order
b=0 ;
ro=1 ;
co=1 ;
%makes the initial values for use in the for loop, as the number of rows
%and columns 
sort(arr(2:end,1));   %transposes the elements from position two till end in column one
for col=1:c %defines: c number of times the for loop will run
    if all(sort(arr(ro:end,col))'==vec) & b ~=4 %this logical condition is executed when the logical is true
% the code will be true when all the logicals will be TRUE and when b is
% not equal to 4. 
        l=true ;
        char='down' ;
        num=col ;
        b=4 ;
        %assigns the corresponding values for when the logical condition is
        %true. 
    end
end

for row=1:r  %for an increasing index from 1 to the number of rows
    if all(sort(arr(row,co:end))==vec) & b~=4 %same logic as the first loop
        l=true ;
        char='across' ;
        num=row ;
        b=4 ;
    end
end    
        
if all(sort(diag(arr)')==vec) & b~=4 %compares the sorted transposed diagonal arr with vec, when b isn't equal to 4. 
%uses the major diagonal
    l=true ;
    char='diagonal' ;
    num=1 ;
    b=4  ;
    %assings the corresponding values for the appropriate logical. 
elseif all(sort(diag(arr(1:r,c:-1:1))')==vec) & b~=4 
% checks the minor diagaonal (by reversing the arr and then using diag
% funtion) with vec. and when b isn't equal to 4. 
    l=true ;
    char='diagonal' ;
    num=2 ;
    b=4 ;
end 

if b~=4 %a conditional statement to check is b is not equal to 4. 
    l=false ;
    char='no bingo' ;
    num=0 ;
end
    

end 