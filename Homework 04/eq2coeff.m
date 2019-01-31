 function [A B C]= eq2coeff(str)
 
 [A rest] = strtok(str, 'x') ;
 %this uses the 'x' as the deliminator  and gets the values before x.
 A = str2num(A) ;
 %This changes the string A to a double.
 [second rest] = strtok(rest, '+') ;
 %this gets the value 'x ' (with the space) in second.
 [third rest] = strtok(rest, ' ') ;
 %this gets the + sign in third. 
 [B rest] = strtok(rest, 'y') ;
 %this gets a space with the number before y
 B = str2num(B) ;
 %This changes the string B to a double.
 [fifth rest] = strtok(rest, '=');
 %this gets the values in the string before
 [C rest] = strtok(rest, '=');
 %this finds the C value after the = sign. 
 C= str2num(C);
 %This changes the string C to a double. 
 end 
