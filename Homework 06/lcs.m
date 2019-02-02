function [out]=lcs(str1,str2)
arr=[]  ;
for a=1:length(str1) %an increasing variable r is introduced
    for b=1:length(str2) %a second increasing variable c 
        if str1(a)==str2(b) %if the elements match
            if a<=1 | b<=1 
                arr(a,b)=1;
            else
                arr(a,b)=arr(a-1,b-1)+1; %if true, then the code will add one to the previous
%(a-1, b-1) position value. 
            end
        else
            arr(a,b)=0 ;%assigns the value as zero
        end
    end
end
out=max(max(arr)); %finds the max value in the entire array
end