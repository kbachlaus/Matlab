function [out]=iChooseYou(you, rival)
out = 'This will be difficult...';
%This assigns an output in the beginning (before the if statement)
 
%Logic used: Compares the str1 and str2 with the pokemon names. Then it
%uses ALL cases that give out as  'No Sweat'. If these turn out to be
%false...the out is whatever was assigned beforehand as out.
if strcmp(you,  'Charmander') & strcmp(rival, 'Bulbasaur')
    out = 'No sweat!';
elseif strcmp( you, 'Bulbasaur') & strcmp(rival, 'Squirtle')
    out = 'No sweat!';
elseif strcmp(you, 'Squirtle') & strcmp(rival, 'Charmander')
   out = 'No sweat!';
end 

end
