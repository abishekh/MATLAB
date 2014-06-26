x=1:10000;
for(i=1:10000)
    if(i<=5000)
        y(i)=(i/5000);
    else
        y(i)=(10000-i)/5000;
    end;
end;
plot(x,y);
xlabel('Triangular MF');
ylabel('Membership Grades');