function [imgout]=mosaic(name,num)

np1=[];
np2=[];

n=1;

img=imread(name);

[r c l]=size(img);


ir=r/num;
ic=c/num;

nr=round(linspace(1,r,num));
nc=round(linspace(1,c,num));

narr=im(nr,nc,:);

    for a=1:num

            for b=1:num

                n1=((ic)*(a-1))+1;
                n2=(ic*a);

                N1=((ir)*(b-1))+1;
                N2=(ir*b);

                avg=mean(mean(img((N1:N2),(n1:n2),:)));

                ddd=narr(:,:,1)/2;
                dddd=narr(:,:,1)+(225/2);


                np=cat(3,(narr(:,:,1)/2)+(avg(1)/2), (narr(:,:,2)/2)+(avg(2)/2), (narr(:,:,3)/2)+(avg(3)/2));


                n=n+1;

                np1=[np1; np];

            end

        np2=[np2 np1];
        [r c l]=size(np2);
        np1=[];

    end 

imgout=np2;

[r c l]=size(imgout);

end 