%compareTips
% Script Outputs (3): - tipBefore  (double) the tip amount before tax
%                     - tipAfter   (double) the tip amount after tax
%                     - difference (double) the absolute difference between
%                                           the two
% Script Description:
%   Several TAs went to dinner and were having a discussion about whether
%   its better to tip before tax or after, and what the actual difference
%   in the amount paid is. Given their subtotal of the meal, the sales tax
%   percentage, and the percentage of the tip, write a script called
%   "compareTips" that computes the tip before sales tax is applied, after
%   sales tax is applied, and the difference between the two. Name your
%   variables "tipBefore", "tipAfter", and "difference" respectively. 
%
% Notes:
%   - You do not have to account for rounding to the nearest penny.
% Inputs:
subtotal= 101.68;
salestaxpercentage = 9.75;
tippercentage = 20; 

tipBefore = subtotal.*(tippercentage./100);
tipAfter = (subtotal.*(1+(salestaxpercentage./100)).*(tippercentage./100));
difference = tipAfter - tipBefore
 
% Outputs:
%   - tipBefore  => 20.3360
%   - tipAfter   => 22.3188
%   - difference => 1.9828