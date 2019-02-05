function [newmachine food]= getSnacks(machine, order, money)

[R1 C1] = size(order)

OrderPrice=[]
OrderQuantity=[]
OrderName= []
for i=1:C1 
    A = order(i).price
    B = order(i).quantity
    N = {order(i).item}
    OrderPrice =[OrderPrice A]
    OrderQuantity =[OrderQuantity B]
    OrderName = [OrderName N]
    
end

[OrderPrice positions]=sort(OrderPrice)
positions= positions(end:-1:1)
OrderPrice= OrderPrice(end:-1:1)

OrderQuant= []
OrderNames= []
for i=[positions]
C = OrderQuantity(i)
N2 = OrderName(i)
OrderQuant = [OrderQuant C]
OrderNames = [OrderNames N2]
end

food=struct('item',{}, 'quantity',{})

for i=OrderPrice(end:-1:1)
    if i<money
        OrderNames= 
    end
end
                
[R C]=size(machine)
for i=1:C1
   D=order(i).item
   [location outputprices]=locateItem(machine, D)
   E = location
   if ~strcmp(location, 'Item not found')
       locationLetter=E(1)
       switch locationLetter
           case 'A'
               RowIndex= 1
           case 'B'
               RowIndex= 2
           case 'C'
               RowIndex= 3
           case 'D'
               RowIndex= 4
           case 'E'
               RowIndex= 5
           case 'F'
               RowIndex= 6
           case 'G'
               RowIndex= 7
           case 'H'
               RowIndex= 8
           case 'I'
               RowIndex= 9
           case 'J'
               RowIndex = 10
           case 'K'
               RowIndex = 11
           case 'L'
               RowIndex = 12
           case 'M'
               RowIndex = 13
           case 'N'
               RowIndex = 14
           case 'O'
               RowIndex = 15
           case 'P'
               RowIndex = 16
           case 'Q' 
               RowIndex = 17
           case 'R'
               RowIndex = 18
           case 'S'
               RowIndex = 19
           case 'T'
               RowIndex = 20
           case 'U'
               RowIndex = 21
           case 'V'
               RowIndex = 22
           case 'W'
               RowIndex = 23
           case 'X'
               RowIndex = 24
           case 'Y'
               RowIndex = 25
           case 'Z'
               RowIndex = 26
       end 
       ColIndex = E(2)
       
   end 
end
newmachine = machine
food = []
  
end
