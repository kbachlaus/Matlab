function memeGenerator(name,str)

im=imread(name);


place=strfind(str,'\n');

top=str(1:(pl-1));
bottom=str((pl+2):end);




[ r c l]= size(im);

nup=length(top);
ndown=length(bottom);

f=round(0.05*c);

wup=round((c-(2*f))/nup);
ht=round(0.1*r);

for i=1:nup
    
    letter=top(i);
    
        if letter==' '
        im(f:(ht+f),(f+((i-1)*wup)):((wup*i)+f),:)=0;
        else 
    
            switch letter
                case '-'
                    letter='DASH';
                case ','
                    letter='comma';
                case '!'
                    letter='EXCLAMATION_POINT';
                case '?'
                    letter='QUESTION_MARK';
                otherwise
            end 
    
    letter=sprintf('%s.png',letter);
    im1=imread(letter);
    [rl cl ll]=size(im1);
    
    len=round(linspace(1,cl,wup+1));
    ht= round(linspace(1,rl,ht+1));
    
   
    

    im(f:(ht+f),(f+((i-1)*wup)):((wup*i)+f),:)=im1(ht,len,:);
        end 
end 
 

wup1=round((c-(2*f))/ndown);


for j=1:numdown
    
    letter=bottom(j);
    
    if letter==' '
        im((r-f-ht):(r-f),(f+((j-1)*wup1)):((wup1*j)+f),:)=0;
    else 
    
        switch letter
            case '-'
                letter='DASH';
            case ','
                letter='comma';
            case '!'
                letter='EXCLAMATION_POINT';
            case '?'
                letter='QUESTION_MARK';
            otherwise
        end 
   
    letter=sprintf('%s.png',letter);
    im1=imread(letter);
    [rl1 cl1 ll1]=size(im1);
    
    len=round(linspace(1,cl1,wup1+1));
    ht= round(linspace(1,rl1,ht+1));
    

    im((r-f-ht):(r-f),(f+((j-1)*wup1)):((wup1*j)+f),:)=im1(ht,len,:);
    
    end 
end
nName=['new_' name]
imwrite(im,nName,'png')
    
end