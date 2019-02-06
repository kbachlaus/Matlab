function connect( points,order,color )


xrow=points(1,:);

x=xrow(order);

yrow=points(2,:);

y=yrow(order);

    if ~isempty(color)
        switch color
            case 'black'
                a=('-k');
            otherwise
                a=['-' color(1)];
        end 
    end
plot(x,y,a)

end

