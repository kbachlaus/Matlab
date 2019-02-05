function [newstruct]= findStruct(Name, structure)
[R C] = size(structure)
for i=1:C
    A=structure(i).name
    if strcmp(A, Name)
        newstruct = structure(i)
    else 
        newstruct= -1
    end
end
end
