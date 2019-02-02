function in = caesar(in, shift)

in(in >= 'a' & in <= 'z') = mod(in(in >= 'a' & in <= 'z') - 'a' + shift, 26) + 'a';
in(in >= 'A' & in <= 'Z') = mod(in(in >= 'A' & in <= 'Z') - 'A' + shift, 26) + 'A';

end


function in = caesar(in, shift)

% For one case, we shift the values down between 0 and 25. Then, we apply
% the shift and mode with 26 to ensure that the values remain between 0 and
% 25. Then we bring the values back into the alphabetical values range.
% Repeat for the other case. 

in(in >= 'a' & in <= 'z') = mod(in(in >= 'a' & in <= 'z') - 'a' + shift, 26) + 'a';
in(in >= 'A' & in <= 'Z') = mod(in(in >= 'A' & in <= 'Z') - 'A' + shift, 26) + 'A';

end