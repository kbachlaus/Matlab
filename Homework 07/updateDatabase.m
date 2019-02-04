function [ totalS new_in1 ] = updateDatabase( in1, info )
temp= in1.sales ; 

temp1= in1.inventory ; % The inventory part of input struct array is stored in temp1
        
temp(end+1).salesID =info{1} ; 

temp(end).customer= info{2} ;

product_info= {temp1.product} ; %the product part of temp1 is stored in product_info

quantity_info= [temp1.quantity] ; % the quantity part of temp1 is stroed in product_info

total_sales=0 ;

for i= 1:length(product_info) %defiens the length of the loop
    
    if strcmp(product_info{i},info{3}) %condition comparing the ith cell of product_info,
% and the third cell of info
        
        if info{4} >= quantity_info(i) %checks the conditional 
            
            actual_sold= temp1(i).quantity ; %
            
            temp1(i).quantity = 0 ;
            
            totalS= actual_sold.*(temp1(i).price) ;
            
        else
            
             temp1(i).quantity = quantity_info(i)-info{4};
             
             totalS= info{4}.*(temp1(i).price);
        end
    end
end
temp(end).date= info{5}; %

in1.sales= temp;
in1.inventory= temp1;

new_in1= in1;   
end

