function [out] = calcGPA (courses,hours, grades, CL) ;

grades ( grades < 65 ) = 0 ;
%to eliminate the possibilty of matlab assigning the grade as 0.
grades ( grades >= 90) = 4 ;
grades ( grades >= 80 & grades < 90) = 3 ;
grades ( grades >= 70 & grades < 80) = 2 ;
grades ( grades >= 65 & grades < 70) = 1 ;
%This information provides the grade boundaries for the gpa. Allowing for
%the code in the next lines to be used directly with the gpa credits.

% DCL = courses ( (CL <= courses) & (courses < CL + 1000) )
%find the courses that range from eg. 2000 to 3000 for CL = 2000

% to find the logical vector: = courses >= CL & courses < CL + 1000 

B = grades( courses >= CL & courses < CL + 1000 ) ;
% This serves to sync the logical vector with the grades vector, to allow
% matlab to access the respective grade for the given course levels.
C = hours ( courses >= CL & courses < CL + 1000 ) ;
% This serves to sync the logical vector with the hours vector, to allow
% matlab to access the respective hours for the given course levels.
out = ( B * C' ) ./ (sum(C));
%This multiplies the vectors B and C (matrix multiplication) and divides it
%by the sum of the the number of hours taken.
end

