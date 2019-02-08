function emailGen(in)
lines =0
n= 0
a= in(1:end-4)
outname= [a '_email.txt']
Rand= fopen(in,'r')
Rand1= fopen(outname,'w')
lines= fgetl(Rand)   

while lines~=-1
        while length(lines)>=1
            length(lines)
            
            [name lines]=strtok(lines,',')
            
            name(end)
                if length(str2num(name(end)))>0
                   if n==1
                    newline=['\n' name '@gatech.edu']
                   else 
                    newline=[name '@gatech.edu']
                   end 
                    fprintf(Rand1,newline)
                    n=1
                    
                end
        end
    lines=fgetl(Rand)    
end
    
fclose(Rand)
fclose(Rand1)



end 