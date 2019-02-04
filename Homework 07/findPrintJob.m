function [ printjob ] = findPrintJob( in, nameone )

while strcmp(in.name, nameone)~=1 %runs a while loop comparing the two inputs
    in=in.next; % reassigns the structure array
    if isempty(in); %checks if the input is empty
        printjob= 'Not Found'; %assigns an output value
        return %returns to the loop
    end
end
in=rmfield(in,'next'); %removes the field 
printjob= in; % assings the output

end

