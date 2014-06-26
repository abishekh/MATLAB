x=0:0.1:10
s=2
y=exp(x);
X=(1-y)
Y=(1+s*y)
Z=X./Y
subplot(1,2,1):plot(x,y);
xlabel('Exponential MF');
ylabel('Membership Grades');
subplot(1,2,2):plot(x,Z);
xlabel('Sugenos Complement');
ylabel('Membership Grades');