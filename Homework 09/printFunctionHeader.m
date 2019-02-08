function printFunctionHeader(info)

b=[]
c=[]

a=1

fh=fopen(info)
line=fgetl(fh)

while line~=-1
%find the funciton name

ndx=strfind(line, 'Function Name: ')
if ~isempty(ndx)
functionname=line(ndx+15:end)
end

%find the number of inputs

if a==1
    [nope yes]=strtok(line,'(')
if ~isempty(yes) 
[num1 junk]=strtok(yes,')')
num1(1)=[]
num1=str2num(num1)
a=2
end
end

%find the number of inputs

position=strfind(line, 'Outputs')
if~isempty(position) 
    [nope yes]=strtok(line,'(')
if ~isempty(yes) 
[num2 junk]=strtok(yes,')')
num2(1)=[]
num2=str2num(num2)
end
end
line=fgetl(fh)
end

%now to actually find what we will output
%function [out1,out2]=payMachine2(in1,in2,in3)


for a=1:num1
    a=num2str(a)
    there=['in' a ',']
    b=[b there]
end

b(end)=[]
for a=1:num2
    a=num2str(a)
    there=['out' a ',']
    c=[c there]
end

c(end)=[]
toput=sprintf('function [%s]=%s(%s)',c,functionname,b)
namesoffile=[functionname '.m']
fh1=fopen(namesoffile, 'w')

fprintf(fh1,toput)
num1
num2
functionname
toput

end 
