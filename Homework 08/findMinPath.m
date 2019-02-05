function [from to len] = findMinPath (st)
[m n] = size(st);
counter = 0;
countvec = [];
pathstr = {};
lengthsvec = [];
names = {};
npaths = [];

for x = 1:n
    
    counter = counter + 1;
    countvec = [countvec counter];
    
    [c d] = size(st(x).paths);
    for z = 1:d
        pathstr{end + 1} = st(x).paths{z};
    end
    
    lengthsvec = [lengthsvec st(x).lengths];
    [p q] = size(lengthsvec);
    
    npaths = [npaths q];
    names{end + 1} = st(x).name;
end

logcount = 0;

for fuk = 1:n
    logcount = logcount + 1;
    logic_arr(logcount, :) = strcmp(pathstr, st(fuk).name);
end

%elliminating any houses already present in the given structure

logicals = ~(any(~logic_arr,1) & any(logic_arr,1));
inter_index = 1: length(lengthsvec);

path_norepeats = pathstr(logicals);
lengthsvec = lengthsvec(logicals);

%find index of the minimum length with respect to the original
%vector of lengths
inter_index = inter_index(logicals);

[len bb] = min(lengthsvec);
b = inter_index(bb);
countfrom = 1;

%finding the interval of the number of possible paths to determine
%the index of the house from where to begin.
for y = countvec
    if b <= npaths(y)
        if y>1 & b>npaths(y-1)
            countfrom = y;
        else countfrom = countfrom;
        end
    end
end
from = names{countfrom};
to = pathstr{b};
end