function portal( len,per,rads )

hold on

m=0;

angle=0;

counting(len,per,angle);

    function counting(len,per,angle)
        if len>1;
            if mod(m,2)==0
                color='g'
            else 
                color='c'
            end
            m=m+1
            x=[-.5.*len,.5.*len,.5.*len,-.5.*len,-.5.*len];
            y=[-.5.*len,-.5.*len,.5.*len,.5.*len,-.5.*len];
            
            [bob dan]=rotateLines(x,y,angle);
            
            hold on
            plot(bob,dan,color);
            angle=m.*rads;
            len=len.*per;
            counting(len,per,angle);
        end
    end

end

