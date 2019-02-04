function [ index depth ] = deepestCell( arr )

length1 = length(arr); %finds the length

count1 = []; %assings an empty vector

for i= 1:length1  %defines the number of times the for loop runs
    count = 0; 
    temp = arr{i}; %finds the ith cell and puts it into temp
    while iscell(temp(1)) %runs a loop
        temp = temp{1}; %the first cell of temp
        count = count + 1; %is the increment
    end
    count1(end+1)= [count]; %adds to the end of count
end

[depth index]= max(count1);

end

