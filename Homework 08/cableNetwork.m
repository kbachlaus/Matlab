function [Houses total] = cableNetwork(s)
froms = s(1);
name_Houses = {s(2:end).name};
Houses = {};
total = 0;

while ~isempty(name_Houses)
    [from to len] = findMinPath(froms);
    Houses{end+1} = ['(' from ', ' to ')' ': ' num2str(len)];
    
    logical = strcmp(name_Houses, to);
    clog = strcmp({s.name}, to);
    
    indices = 1:length({s.name});
    k = indices(clog);
    
    name_Houses = name_Houses (~(logical));
    froms(end+1) = s(k);
    total = total + len;
end
end 