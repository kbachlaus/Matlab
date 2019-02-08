
function receipt(shop,date, name,card)

thusfarsum=0
beginline=sprintf('CS1371 Grocery Store\n\n%s\n%s\nXXXX-XXXX-XXXX%s\n\n',date,name,card(end-4:end))

[n t r]=xlsread('Inventory.xls')

[row1 col1]=size(r)

fname=[name '_receipt.txt']

fh=fopen(fname, 'w')
fprintf(fh,beginline)
[junk nums]=size(shop)

for a=1:nums
    
    products=shop(a).product
    quantitys=shop(a).quantity
    
    for b=2:row1
        
        tosee=r{b,1};
        if strcmp(tosee,products)
            prices=n(b-1)*quantitys
        end 
    end 
    
    inserting=sprintf('%dx %s     %.2f\n',quantitys,products,prices)
    fprintf(fh,inserting)
    thusfarsum=thusfarsum+prices
end 

secondlastline=sprintf('Tax     %.2f\n',(thusfarsum*0.1))

lastline=sprintf('Total     %.2f',thusfarsum+(thusfarsum*0.1))

fprintf(fh,secondlastline)

fprintf(fh,lastline)

end