function [ out, d ] = reversePascal( vec )

out=[vec(1), vec(end)]

d=0

if length(vec)>2
    
    for i=2:length(vec)
        vec(i)=vec(i)-vec(i-1)
        d=d+1
    end
    
    vec(end)=[]
    reversePascal(vec)
else 
    
    d=d+1
end

end

