clc
clear all
close all


tau = 2;
deltat=0.01;

x0 = 0;
x0d=0;
x0dd=0;
xf = 2;
xfd=0;
xfdd=0;

C=[x0 x0d 0.5*x0dd 0 0 0];

tau2=power(tau,2);
tau3=power(tau,3);
tau4=power(tau,4);
tau5=power(tau,5);
C= transpose(C);
TAUM = [tau3 tau4 tau5 ; 3*tau2 4*tau3 5*tau4 ; 6*tau 12*tau2 20*tau3];
XA11= xf-C(1,1)-(C(2,1)*tau)-C(3,1)*tau2;
XA21=xfd-C(2,1)-2*C(3,1)*tau;
XA31=xfdd-2.*C(3,1);
A = [XA11; XA21; XA31];

C(4:6) = (TAUM\A)';

x=[];
dx=[];
ddx=[];
t=0:deltat:tau;
for i=0:deltat:tau
    newx=0;
    newdx=0;
    newddx=0;
    newx=C(1) + (C(2).*i) + (C(3).*power(i,2)) + (C(4).*power(i,3)) + (C(5).*power(i,4)) + (C(6).*power(i,5));
    newdx=C(2)+ (2.*C(3).*i)+ (3.*C(4).*power(i,2)) + (4.*C(5).*power(i,3))+ (5.*C(6).*power(i,4));
    newddx=(2.*C(3))+(6.*C(4).*i)+(12.*C(5).*power(i,2))+(20.*C(6).*power(i,3));
    x= [x  newx];   
    dx=[dx newdx];
    ddx=[ddx newddx]; 
  
end

%Problem b

figure;
subplot(3,1,1)
plot(t,x);
xlabel('Duration');
ylabel('Position');
title('PROBLEM: b');
subplot(3,1,2)
plot(t,dx);
xlabel('Duration');
ylabel('Velocity');
subplot(3,1,3)
plot(t,ddx);
xlabel('Duration');
ylabel('Acceleration');


Xstart=[x0 x0d x0dd];
Xend=[xf xfd xfdd];

tau_left=tau;
X = [Xstart];
temp=Xstart;

for i=1:1:length(t)-1

temp=Step(temp,Xend,tau_left,deltat);
tau_left=tau_left-deltat;
X=[X ; temp];
  
end


position = X(:,1);
velocity = X(:,2);
acceleration = X(:,3);


%Problem C

figure;
subplot(3,1,1)
plot(t,position);
xlabel('Duration');
ylabel('Position');
title('PROBLEM: c');
subplot(3,1,2)
plot(t,velocity);
xlabel('Duration');
ylabel('Velocity');
subplot(3,1,3)
plot(t,acceleration);
xlabel('Duration');
ylabel('Acceleration');

%Difference :


figure;

subplot(3,1,1)
plot(t,x'-position);
xlabel('Duration');
ylabel('Position Difference');
title('PROBLEM: c');
subplot(3,1,2)
plot(t,dx'-velocity);
xlabel('Duration');
ylabel('Velocity Difference');
subplot(3,1,3)
plot(t,ddx'-acceleration);
xlabel('Duration');
ylabel('Acceleration Difference');





