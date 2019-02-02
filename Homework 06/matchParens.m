function [tf d]=matchParens(str)
tf=0 ;
count1=0 ;
i=1 ;
a=0 ;
if length(str(str=='('))~=length(str(str==')')) 
    tf=false ;
    %checks if the total number of ('s is not equal to the total number of
    %)'s. If true, the tf is false. 
else 
    while i<length(str) & a~=4
        if str(i) =='('   %finds if the index i of str is (
            count1=count1+1  ; %increases the count by 1
        elseif str(i)==')' %finds if the index i of str is )
            count1=count1-1 ;%decreases the count by 1
        end
        
        if count1<0 & a~=4   %if count is below zero then the str is balanced
            tf=false ;%
            a=4;
        elseif count1>0 & a~=4
            tf=true;
        end
        i=i+1 ;%increases i for the while loop
    end
end
d=length(str(str=='('))-length(str(str==')'));
%calculates the balance 
end