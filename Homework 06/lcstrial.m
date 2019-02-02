
function [out]=lcs(str1, str2)

[r1]= length(str1)
[c2]= length(str2)
array= zeros(r1, c2)
[a]=min(r1, c2)

lengthvec = 0

for i = 1:r1
    l =str1(i)
    for j = 1:c2
        m = str2(j)
        b = strcmp(str1(i), str2(j))
        lengthvec = lengthvec + b

    end
     
end 

% for i= 1:a 
%     if strcmp(str1(i), str2(i))
%         lengthvec = lengthvec+1
%         array(i,i)=lengthvec
%     end 
% end
%     x=array
%     vec = diag(array)
%     strvec = num2str(vec)
%     O = num2str(0)
%     [one rest] =strtok(strvec, O )
%     firstsum = length(one)
%     [two rest] = strtok(rest, O)
%     secondsum = length(two)
%     
% out = max(firstsum, secondsum)
end 

%
% Function Description:
%   Given two strings, we can define the 'longest common substring' as the
%   longest string of consecutive characters that appear in both strings.
%   For example, the longest common substring between 'world' and
%   'wolly' would be 'wo', of length 2.  A common method of finding this
%   substring is by using a table-filling approach.  The algorithm is as
%   follows:
%
%    1. Set up an array of size length(string 1) by length(string 2),
%       filled with zeros.  We can imagine that the ith row in the array
%       corresponds to the ith character in string 1, and the jth column in
%       the array corresponds to the jth character in the second string.
%       Taking our example above, we get something like this:
%
%              w  o  l  l  y
%          w   0  0  0  0  0        
%          o   0  0  0  0  0
%          r   0  0  0  0  0
%          l   0  0  0  0  0
%          d   0  0  0  0  0
%
%    2. Now, take each element in the array, going left-to-right,
%       top-to-bottom, and check the corresponding letters in the two
%       strings. If they are the same, set the value at that point, call
%       it array(i, j), to 1 + array(i-1, j-1), or just 1 if i-1 or j-1 is
%       0. For example:
%
%       After doing the first two rows:
%
%              w  o  l  l  y
%          w   1  0  0  0  0        
%          o   0  2  0  0  0
%          r   0  0  0  0  0
%          l   0  0  0  0  0
%          d   0  0  0  0  0
%
%       We got a 1 at array(1, 1) because str1(1) == str2(1).  Then, we got
%       a 2 at array(2, 2) because str1(2) == str2(2), and array(1, 1) was
%       1, so we set array(2, 2) = 1 + array(1, 1).
%
%       After doing the rest:
%              w  o  l  l  y
%          w   1  0  0  0  0        
%          o   0  2  0  0  0
%          r   0  0  0  0  0
%          l   0  0  1  1  0
%          d   0  0  0  0  0
%
%       3.  Then, the length of the longest common substring can be found
%           by simply taking the max element in the array, which in our 
%           example is 2, as expected.       
%
% Notes:
%	- Case does matter, so 'H' ~= 'h'.
%   - You don't have to actually find the longest common substring, just
%     its length. 
%   - You are guaranteed that both strings will have at least one
%     character.
%
% Hints: 
%   - You may find the max() function useful. 
%
% Test Cases:
%	l1 = lcs('hello, world', 'hey there')
%       l1 => 2
%
%   l2 = lcs('Need a good string?', 'Why not Zoidberg?')
%       l2 => 2
%   
%   l3 = lcs('aeiou', 'bcd')
%       l3 => 0
%
