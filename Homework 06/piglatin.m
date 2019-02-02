function [translated]=pigLatin(phrase)
out=[]
outt=[]
a=0
translated=[]
%assigns all as empty vectors 
[word rest]=strtok(phrase,' ')
%checks for spaces in the begining of phrase, or separates a word by a
%space
while length(word)>=1 %starts a while loop
    wordd=word
switch word(1) %checks the first element of word
    case {'a','e','i','o','u'}  %multiple cases for the vowels
        if length(out)>=1 %starts an if statement
            out=[]
            outt='w'
        else
            outt='w'
        end
    otherwise
        out=[] 
        while ~(word(1)== 'a'| word(1)== 'e' |word(1)== 'i' |word(1)== 'o' |word(1)== 'u')
            %checks for consonants
            if length(outt)>=1 %logical: length of out is greater than or squal to one. 
                outt=[]
                out=[out word(1)] %concatenates an empty vector with the first element of word
                word(1)=[]
                wordd(1)=[]
            else
                out=[out word(1)]
                word(1)=[]
                wordd(1)=[]
            end
            
        end 
end
translatedd=[wordd '-' out outt 'ay'] %concatenates in the particular format
[word rest]=strtok(rest,' ') %finds the next word for the while loop to check the next word
translated=[translated ' ' translatedd]%concatenates for the other fomart
end 
translated(1)=[] 
end
