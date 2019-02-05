function [newM food] = getSnacks(machine, order, input3)
[m n] = size (order);
newM = machine;
prices = [];
for d = 1:n
    price1 = order(d).price;
    prices = [prices price1];
end

[prices index] = sort(prices, 'descend');
food = [];

for e = index
    prod = order(e).item;
    [places cost] = locateItem (machine, prod);
if cost~=0
    x = double(places(1)) - 64;
    y = str2num(places(2:end));
    qtp = 0;
    while cost<input3 & newM(x,y).quantity>0 & order(e).quantity>0
        order(e).quantity = order(e).quantity - 1;
        qtp = qtp+1;
        input3 = input3 - cost;
        newM(x,y).quantity = newM(x,y).quantity - 1;
    end
    if qtp >0
    
        food(end+1).item = prod;
        food(end).quantity = qtp; 
    end    
end
end