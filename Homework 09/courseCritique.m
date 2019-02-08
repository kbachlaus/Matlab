function [top struct] = courseCritique(theName, random)
[n t r] = xlsread(theName)
[row col] = size(r)
top = ''

gpas = []
gpascel = {'GPA'}
indices = [1]
struct = []
theProf = {'Professor'}

for x = 2:row
    if strcmp(r{x,2}, 'N/A')
        gpa = 0
    else gpa = r{x,2}
    end
    gpas = [gpas; gpa]
    gpascel = [gpascel; gpa]
end

y = (1:row-1)'
y = y(gpas>random)

if ~isempty(y)
    z = [1; (y + 1)]
    theProf = r(:,1)
    theProf = theProf(z)
    gpascel = gpascel(z)
    gpas = gpas(y)
    [val ind] = max(gpas)
    toprof = theProf{ind+1}
    top = ['Professor: ' toprof]
    cellarray = [theProf gpascel]
    data = cellarray
    data(1,:) = []
    fieldnames = cellarray(1,:)
    fieldnames = fieldnames(1:end, end:-1:1)
    data = data(1:end,end:-1:1)
    struct = cell2struct(data, fieldnames, 2)
    xlswrite([theName(1:end-4) '_new.xls'], cellarray)
end
end