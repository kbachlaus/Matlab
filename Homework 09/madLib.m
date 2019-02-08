function [output]=madLib(FILE, phrase)

[n t r]= xlsread(FILE)

aa=2
 bb=2
 sofar=[]
 cc=2
 
 [before phrase]=strtok(phrase,'%')
while length(phrase)>0

switch phrase(2) 
    case 'n'
        
        toput=t{aa,1}
        phrase=[before toput phrase(3:end)]
            aa=aa+1
    case 'v'
        
        toput=t{bb,2}
        phrase=[before toput phrase(3:end)]
            bb=bb+1
    case 'a'
        
        toput=t{cc,3}
        phrase=[before toput phrase(3:end)]
        cc=cc+1
end 

[before phrase]=strtok(phrase,'%')
end 
output=before
        
end  