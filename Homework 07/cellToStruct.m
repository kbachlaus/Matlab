function [ out] = cellToStruct( in )

for i= 1:2:length(in); %defines the number of times the loop runs
    out.(in{i})=in{i+1}; % creates a structure array of the ith + 1th element
end

end


