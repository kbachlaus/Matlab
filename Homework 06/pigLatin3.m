function [out]= pigLatin(str)
[word, rest]=strtok(str , ' ');
%checks for spaces in the beginning of the string
out = []; %assigns a value to the output beforehand
while ~isempty(word) %checks if the word is not an empty vector
    if word(1)=='a'||word(1)=='e'||word(1)=='i'||word(1)=='o'||word(1)=='u'
%the above line: uses a logical to check for the vowels in the first
%element of word
       newword = [ word '-' 'way']; %concatenates the word with '-way'
    else
        [newword secondpart]= strtok(word, 'aeiou');
        %singles out consonants untill a vowel appears
        newword = [ secondpart '-' newword 'ay'];
        %concatenates the secondpart with the format given.
    end 
    
    [word, rest]=strtok(rest , ' '); %finds the next word 
    out = [' ' newword] ; %concatenates a space with an empty vector 
    % with newword

end

end  

