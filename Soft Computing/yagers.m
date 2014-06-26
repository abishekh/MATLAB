x=0:0.1:10
w=1
y=exp(x)
Z=(1-(y.^w)).^(1./w)
subplot(1,2,1):plot(x,y);
xlabel('Exponential MF');
ylabel('Membership Grades');
subplot(1,2,2):plot(x,Z);
xlabel('Yagers Complement');
ylabel('Membership Grades');