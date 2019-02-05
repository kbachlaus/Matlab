function [newwallet coins]= payMachine(wallet, Name, cost)
[R C]=size(wallet) %finds the dimensions of the input structure wallet. 
%Basically to find the number of names in the structure.

NameVector= []
NamePosition= []
%Retrieve wallet information for the person specified
%First get the names in a vector and compare inputname with that to find
%the index number of the name for the struct coin numbers.
for i=1:C
    NameVector=wallet(i).name
    if strcmpi(NameVector, Name)
        nameposition= i
    else
        nameposition=0
    end
    NamePosition= [NamePosition nameposition]%creates a vector of zeros and one position number
end
logicalone= (NamePosition>0) %finds logical of where the non zero number is
[bleh NamePosition]=find(logicalone) %gets the position of where the number is.bleh is unused.

%Name= wallet(NamePosition).name
%NUMBER OF COINS IN WALLET
Quarters= wallet(NamePosition).quarters
Dimes= wallet(NamePosition).dimes
Nickels= wallet(NamePosition).nickels
Pennies= wallet(NamePosition).pennies

%COINS NEEDED IDEALLY
% Q= floor(cost./0.25)
% D= floor((cost-(Qout*0.25))./0.10)
% N= floor(cost-(Qout*0.25)-(Dout*0.10)./0.05)
% P= floor(cost-(Qout*0.25)-(Dout*0.10)-(N*0.05)./ 0.01)


amount= (Quarters*0.25 + Dimes*0.10 + Nickels*0.05 + Pennies*0.01)
%calculates total money in the persons wallet
cantheypay= amount-cost %finds if the person has enough money or not
if (0<=cantheypay) %if the person can pay, then the rest of the code runs, if not
%then at the end of this if, the outputs are defined. 

Q= floor(cost./0.25)
if Quarters>=0
    Qhave= Quarters %quartes the person has
    Qneed= Q %quarters the person would ideally need if they had infinite quarters
    Qvector=[Qhave Qneed] %concatenates
    Qout= min(Qvector) %finds the lowest value
end
    D= floor((cost-(Qout*0.25))./0.10) %finds the remaining cost once quarters are paid
    %REST IS THE SAME LOGIC
if Dimes>=0
    Dhave = Dimes
    Dneed = D
    Dvector= [Dhave Dneed]
    Dout= min(Dvector)
end
    N= floor((cost-(Qout*0.25)-(Dout*0.10))./0.05)%remaining cost, considering quarters, dimes
if Nickels>=0
    Nhave = Nickels
    Nneed= N
    Nvector= [Nhave Nneed]
    Nout= min(Nvector)
end
    P= floor((cost-(Qout*0.25)-(Dout*0.10)-(Nout*0.05))./ 0.01)
%%remaining cost, considering quarters, dimes, nickels
if Pennies>=0
    Phave= Pennies
    Pneed =P
    Pvector= [Phave Pneed]
    Pout=min(Pvector)
end

newwallet = wallet %creates a new struct with same fields and fieldnames
%CALCULATES REMAINING COINS OF EACH TYPE AND PUTS INTO THE OUTPUT STRUCT
newwallet(NamePosition).quarters= Qhave - Qout
newwallet(NamePosition).dimes= Dhave - Dout
newwallet(NamePosition).nickels= Nhave - Nout
newwallet(NamePosition).pennies= Phave - Pout

coins = struct('quarters',Qout, 'dimes',Dout, 'nickels',Nout, 'pennies',Pout)
%the output with how many coins of each type used

end

if (0>cantheypay) %if the person cannot pay
newwallet= wallet
coins = 'You don''t have enough money'
end

%modQ= mod(cost, 0.25)
%modD= mod(cost, 0.10)
%modN= mod(cost, 0.05)
%modP= mod(cost, 0.01)
end
