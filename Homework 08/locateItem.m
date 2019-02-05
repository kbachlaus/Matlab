function [location outputprice]=locateItem(machine, name)

[R C]=size(machine)
vec=[]
for i=1:R
    for j=1:C
        A=machine(i,j).item 
        B = strcmp(A, name)
        if B
            rowindex= i
            colindex= j
            switch i
                case 1
                    LR='A'
                case 2
                    LR='B'
                case 3
                    LR='C'
                case 4
                    LR='D'
                case 5
                    LR='E'
                case 6
                    LR='F'
                case 7
                    LR='G'
                case 8 
                    LR='H'
                case 9 
                    LR='I'
                case 10
                    LR='J'
                case 11
                    LR='K'
                case 12
                    LR='L'
                case 13
                    LR='M'
                case 14
                    LR='N'
                case 15
                    LR='O'
                case 16
                    LR='P'
                case 17
                    LR='Q'
                case 18
                    LR='R'
                case 19
                    LR='S'
                case 20
                    LR='T'
                case 21
                    LR='U'
                case 22
                    LR='V'
                case 23
                    LR='W'
                case 24
                    LR='X'
                case 25
                    LR='Y'
                case 26
                    LR='Z'
            end 
            CI = num2str(colindex)
            location = [LR CI]
            outputprice = machine(rowindex,j).price
            
        end 
         vec = [vec B]
        if all(vec==0)
            location = 'Item not found'
            outputprice = 0
        end
    end
end

end 
