function out = ringSum( array )


[r c]=size(array);

if isempty(array);
    out=[];
elseif r==1|c==1
    
    out=sum(array);
else
    
    s=sum(array(1,:))+sum(array(2:end,1))+sum(array(end,2:end))+sum(array(2:end-1,end));
    out=[s ringSum(array(2:end-1,2:end-1))];
end 

end

