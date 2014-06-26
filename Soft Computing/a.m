x=1:0.001:20
s=2
y=sin(x)
X=(1-y)
Y=(1+s*y)
Z=X./Y
subplot(1,2,1):plot(x,y);subplot(1,2,2):plot(x,Z);