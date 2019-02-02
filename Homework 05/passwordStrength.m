function [strength]=passwordStrength(str)
strength = 0; 
%assigns a value to strength before the if statements

%an if statement for the length of the string str
if length(str)<5  %if length is less than 5 
    strength = 'Password must be at least 5 characters.'; 
elseif length(str)>21 %if length is greater than 21
    strength = 'Password must not exceed 21 characters.';
else 
    strength = 1;
    %Finds if the string contains any of the following symbols/numbers/alphabets
    if any(str<='9' & str>='0')
        strength = strength + 1;
    end
    s_one = sum(str<='9' & str>='0');
    %Finds the number of elements that match the symbols/numbers/alphabets
    %Same logic:
    
    if any(str<='z' & str>='a')
        strength= strength+1;
    end
    s_two = sum(str<='z' & str>='a');
    
    if any(str<='Z' & str>='A')
        strength = strength+ 1;
    end
    s_three= sum(str<='Z' & str>='A');
    
    if any(str=='@'|str=='#'|str=='$'|str=='_'|str=='-'|str=='%'|str=='('|str==')')
        strength = strength + 1;
    end
    s_four = sum((str=='@'|str=='#'|str=='$'|str=='_'|str=='-'|str=='%'|str=='('|str==')'));
    
    %If there are 2 or 3 cases, then the base case is 3. According to my
    %logic, if the strength is 4 then it should become 3. Switch statement
    %is used:
    switch strength
        case 4
            strength = 3
    end
     
    X = [s_one s_two s_three s_four] ; %concatenates the numbers together
    [max_number ~]= max(X) ; %Z finds the max number in X
    factor = round(max_number./length(str)) ; %using factor formula
    strength = strength - factor ;
    strength = sprintf('Password has a strength of %d.', strength);
end
    
end
