function out = countProgeny(t)
out = 0
%If t is a person
if ~isempty(t)
%1 for this person
out = 1

%Iterate over all of the children.
A=length(t.children)
for i = 1:length(t.children)
out = out + countProgeny(t.children(i))
end
end
