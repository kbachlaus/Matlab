function [out1 out2] = paintRoom (l , b, h, tw, c)
% Calculates the number of  5 gallon and 1 gallon cans needed to paint a
% rectangular room with windows of total area tw, and the number of coats
% being c. 
totalroomarea = (( l * b) + ( 2 .* l .* h) + (2 .* b .* h) - tw) .* c ;
% this calculates the total room area of the room that needs to be painted
% and multiplies it by the number of coats, so as to get the total area to
% be painted. 
gallons = ceil(totalroomarea ./ 350 ) ;
% This calculates the number of gallons of paint needed, since each gallon
% paints 350 sqft of area. The ceil function rounds off the number to the
% nearest integer towards infinity. 
out2 = mod(gallons, 5 ) ;
%this equation calculates the remainder when the number of gallons is
%divided by 5. This gives the number of one gallon paintboxes needed.
out1 = (gallons - out2)./5 ;
% subtracting the number of one gallons from the total number of gallons
% gives the total amount of area the 5 gallon paintboxes need to paint.
% Diving that by five gives the number of 5 gallon boxes needed.
end

