
function [out]=loveCalculator(str1, str2)

%Uses and if statement to check if one name is in another
if strfind(str1, str2)==1
    out = 0;
    %this checks if the second string is inside the first one. If true out
    %is zero.
elseif strfind(str2, str1)==1
    out = 0;
    %this checks if the first string is inside the second one. if true then
    %out is zero.
else
    %this checks for all the other cases. *The actual calculation
    
    str1_l = sum(str1=='l');
    %finds the sum of the number of 'l's in str1. Class:(double)
    str2_l = sum(str2=='l');
    %%finds the sum of the number of 'l's in str2. Class:(double)
    ls = str1_l + str2_l;
    %finds the total number of 'l's in both strings. class: (double)
    
    %Same logic for 'o', 'v', 'e' and 's':
    str1_o = sum(str1=='o');
    str2_o = sum(str2=='o');
    os = str1_o + str2_o; 
    
    str1_v = sum(str1=='v');
    str2_v = sum(str2=='v');
    vs = str1_v + str2_v;
    

    str1_e = sum(str1=='e');
    str2_e = sum(str2=='e');
    es = str1_e + str2_e;

    str1_s = sum(str1=='s');
    str2_s = sum(str2=='s');
    ss = str1_s + str2_s;
    
    vec = [ls os vs es ss];
    %creates a vector of the 5 numbers
    vec = [(ls+os) (os+vs) (vs+es) (es+ss)]
    %adds the adjacent numbers
    vec = [(ls+2*os+vs) (os+2*vs+es) (vs+2*es+ss)]
    %adds adjacent numbers again
    
    a= num2str(ls+os+os+vs+os+vs+vs+es); %creates a string of the number
    b= num2str(os+vs+vs+es+vs+es+es+ss); %creates a string of the number
    vec = [a b] %concatenates the two strings
    vec = str2num(vec) % makes the str to a double type
    out = vec %assigns vec to out.
end   
end 
