x=0:.001:1;
y=sin(2*pi*x)
z=cos(2*pi*x)
a=min(y,z)
subplot(2,1,1):plot(x,y,'g-',x,z,'r--');
xlabel('Fuzzy Set A,B');
ylabel('Membership Grades');
subplot(2,1,2):plot(x,a);
xlabel('Intersection using min');
ylabel('Membership Grades');