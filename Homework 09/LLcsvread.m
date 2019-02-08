function [arr]=LLcsvread(name)

fh=fopen(name)
line=fgetl(fh)

a={}
n=1
r=1
c=[]
while line~=-1
    
    [place line]=strtok(line,',')
    n=1
    
    while ~isempty(place)
        
    a(r,n)={place}
    [place line]=strtok(line,',')
    n=n+1
    
    end 
    r=r+1
    line=fgetl(fh)
end
arr=a
end 