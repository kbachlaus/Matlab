function [ out ] = minesweeper( anarr )
        
[r c]= size(anarr); %finds the dimensions of the anarray 
empty_anarr= cell(r+2, c+2); %creates an empty cell of dimensions r+2 and c+2

[r1 c1]= size(empty_anarr); % assings the dimensions into variables r1 and r2         

empty_anarr(2:r1-1,2:c1-1)= anarr(1:r, 1:c); %indexes positions in anarr and puts them into 
%given indexes in the empty anarray

count = 0; %preassigns count as zero


for k= 2:c1-1 
    for m= 2:r1-1    
        if ~strcmp(empty_anarr{m,k},'*')
            for i= k-1:k+1
                for j= m-1:m+1
                    if strcmp(empty_anarr{j,i},'*');
                        count= count+1;
                    end
                end
            end
            empty_anarr{m,k}= count;
        end
        count=0;
    end
end

empty_anarr(:,1)=[]; %deletes the first column
empty_anarr(1,:)=[]; %deletes the first row
empty_anarr(:,c1-1)=[]; %deletes the given column
empty_anarr(r1-1,:)=[]; %deletes the given row

out= empty_anarr;

end

