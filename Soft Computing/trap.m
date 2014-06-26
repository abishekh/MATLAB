x=1:1500;
for(i=1:1500)
    if(i<=500)
        y(i)=(i/500);
    else
        if((i<=1000)&(i>500))
        y(i)=1;
    else
        y(i)=((1500-i)/500);
    end
    end
end
plot(x,y);
xlabel('Trapezoidal MF')
ylabel('Membership Values');