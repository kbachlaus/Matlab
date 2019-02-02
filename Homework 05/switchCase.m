function [out]= switchCase(str, direction)

if strcmp(direction, 'Title Case')
    places = find(str==' ') + 1 
    %finds places where there is a space, and adds one for places to
    %capatalize
    indexes = [1 places]
    %includes the first position in the index
    str(indexes) = str(indexes) - 32
    %converts lowercase to uppercase
    out = str
elseif strcmp(direction, 'Camel Case')
    places = find(str==' ')
    %positions where spaces are present
    index = places +1
    %positions where to capatalize
    str(index) = str(index) -32
    %changes lowercase to uppercase 
    str(places) = []
    %deletes the places where there are spaces
    
    %if statement to check if the first element of the string is
    % uppercase or not. If so, then change to lowercase. 
    if str(1)<= 'Z' & str(1)>='A'
       str(1) = char(str(1) + 32)
    end          
    
    out = str
    
elseif strcmp(direction, 'ROT13')
    out = caesar(str, 13)
    %calls on the caesar function
else strcmp(direction, 'Da Vince')
    str(1:end) = str(end:-1:1)
    %reverses the string.
    out = str
end
 
 end 
