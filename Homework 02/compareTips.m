function [tipbefore tipafter adiff]=compareTips(total, tax, tip)

tipp = tip ./ 100
%this calculates the decimal value of the tip

taxp = tax ./ 100
%this calculates the decimal valueof the tax

tipbefore = (ceil ((total .* tipp) .* 100)) ./ 100;
%this takes the total bill value and multiplies it by the tip amount. It
%then rounds up the value using the ceil function. The hundreth unit is
%rounded of by first multiplying the value itself by 100, so the hundreth
%value takes the position of the ones place. Then the value is rounded up,
% and then multiplied by 100 to get back the actual answer.

tipafter = ceil ((total .* ( 1 + taxp) .* tipp).*100) ./ 100;
%this line of code adds the sales tax amount to the total value, and then
%calculates the tip amount. The rounding logic is the same as explained
%above.

difference = (tipafter - tipbefore);


adiff= abs(difference)
%this will take the absolute value of the 'difference'. 

end 