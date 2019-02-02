
function [out]= chuckTesta(str)

switch str
    case {'deer' 'coyote' 'pheasant'}
        out = 'Nope, Chuck Testa.'
        %checks if the input str is either of the three strings('deer' 'coyote' or
        %'pheasant'). If the str matches any of these, then the output is
        %as given.
    case {'cat' 'dog' 'hamster' 'fish'}
        out = 'Chuck Testa does not taxadermize pets.'
        %if the str matches any of the 4 strings, then the out is as given
    otherwise 
        out = 'The animal was alive!'
        %if str does not match the first two cases, then given any other
        %str, the out will be as given.
end

end 
