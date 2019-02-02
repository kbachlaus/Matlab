 function [sentence]= dateMagic(date, name)
 
 [month rest] = strtok(date, '/');
 [day rest] = strtok(rest, '/');
 [year rest] = strtok(rest, '/');
 %finds the month, day and year in date. class: strings
 
 daydouble = str2num(day);
 months = str2num(month);
 years = str2num(year);
 %the month, day and year in date. class: double
 
 one = year(3:4);
 %step1: finds the last two numbers of the year(string) 
 one = str2num(one);
 %converts one to a double.
 two = floor(one./4);
 %step2: divides one by 4 and then ignores the remainder (by flooring)
 three = one + two;
 %step3
 four = three + daydouble;
 %step4
 
 %Uses the if statement to find the appropriate value of d for the value 
 % of the variable 'month'. 
  if strcmp(month,'1')
      d = 0;
  elseif strcmp(month,'2')
      d = 3;
  elseif strcmp(month,'3')
      d = 3;
  elseif strcmp(month,'4')
      d = 6;
  elseif strcmp(month,'5')
      d = 1;
  elseif strcmp(month,'6')
      d = 4;
  elseif strcmp(month,'7')
      d = 6;
  elseif strcmp(month,'8')
      d = 2;
  elseif strcmp(month,'9')
      d = 5;
  elseif strcmp(month,'10')
      d = 0;
  elseif strcmp(month,'11')
      d = 3;
  else strcmp(month,'12')
      d = 5;
  end
      
  five = four + d; 
 %step5:
 
 %Uses if statement to find appropriate six value given value of variable 'years'
 %six = step6:
  if years<3000 && years>=2000
      six = five -1;
  else 
      six = five;
  end
  
  seven = mod(six, 7);
  %step6: finds the remainder when six is divided by 7. 
  
  %Uses if statement to find the corresponding day to the variable seven.
  %eight= step8:
  if seven==0
      eight = 'Sunday';
  elseif seven==1
      eight = 'Monday';
  elseif seven==2
      eight = 'Tuesday';
  elseif seven==3
      eight = 'Wednesday';
  elseif seven==4
      eight = 'Thursday';
  elseif seven==5
      eight = 'Friday';
  else seven=6;
      eight = 'Saturday';   
  end
       
  sentence = sprintf('%s was founded on a %s.', name, eight);
  %This displays the output in the sentence format, using the variables of
  %the company name and the day of the week.
 end 
 