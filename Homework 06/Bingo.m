function [yorno, direction, location]=Bingo(arr, vec)

[N N]= size(arr)
Arr= sort(vec)

location=0

for i=1:N
    R=sort(arr(i,:))
    if  Arr==(R)
        location= i
        direction = 'across'
    end 
end 

for j=1:N
    C=sort(arr(:,j))'
    if  Arr==(C)
        location = j
        direction = 'down'
    end
end

MJRD= sort(diag(arr))'
MNRD= sort(diag(arr(:, end:-1:1)))'

if Arr==MJRD
    location= 1
    direction ='diagonal'
elseif Arr==MNRD
    location= 2
    direction='diagonal'
end 

if location==0
    direction='no bingo'
    yorno = false
else
    yorno=true
end

end