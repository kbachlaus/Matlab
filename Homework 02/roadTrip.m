
function [cost]=roadTrip(miles, gallons, length, price)

%The function calculates the cost of the amount of gas needed for a road
 %trip. 
 
cost = ceil(gallons .* length .* price ./ miles .* 100) ./ 100 ;
%roadTrip: To calculate the value of the cost of gas for the trip, we
%   first find the the number of gallons per mile by dividing tankSize by
%   tankMiles. Then by multiplying that value with the number of miles and
%   the cost per gallon, the answer is obtained. The final answer is
%   rounded off to the integer towards infinity by using the ceil()
%   function.
       
end