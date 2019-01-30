% roadTrip           
% Script Outputs (1): cost (double) the cost of the amount of gas needed 
%                                   for the road trip
%
% Script Description:
%   Write a script named "roadTrip" that uses the number of miles a
%   car can travel with a specified number of gallons of gas, as well as 
%   the length of a road trip and the price of gas per gallon and
%   calculates the cost of the amount of gas needed for the trip. Name your
%   final output variable "cost". 
%
% Notes:
%   - Again, you do not have to account for rounding to the nearest penny.
%
% Inputs:

tank_size = 5.12
distance_one_tank = 155.36
total_distance = 350
price_per_gallon = 3.84

% Outputs: 
%   - cost => 44.2925

cost = total_distance ./ distance_one_tank .* tank_size .* price_per_gallon