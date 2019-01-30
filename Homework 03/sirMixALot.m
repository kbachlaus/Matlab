function [out]= sirMixALot(vec1, vec2)

larger = max(length(vec1), length(vec2)) ;
%This will compare the length of vec 1 and vec 2, and then output the value
%of the maximum value. 
out = zeros(1,(larger.*2)) ;
% this creates a row vector of zeros, of length 'larger.*2'. This also
% helps to satisfy the condition that the positions where there is no
% element should be filled with zero.
out(1:2:2.*length(vec1))= vec1 ;
%this indexes the odd positions of the output 'out' with the elements of
%vec1.
out(2:2:2.*length(vec2)) = vec2 ;
%this indexes the even positions of the output 'out' with the elements of
%vec2.
end