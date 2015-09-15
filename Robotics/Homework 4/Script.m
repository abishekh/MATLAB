%Homework 4

clear all 
clc

filename = 'noise.data';
delimiter=' ';
RAW=importdata(filename,delimiter);
yn=RAW(:,1);
xn=RAW(:,2);
un=RAW(:,3);
cutoffF=5;
samplingF=100;
order=2;
Wn=cutoffF/(samplingF/2);
[B,A]=butter(order,Wn);
xF=filter(B,A,yn);
t = 1:1000;

% Problem b - Butterworth Filter\
figure;
plot(t,xF,'r',t,xn,'b');
xlabel('Increments');
ylabel('Data');
title('Problem b : Butterworth Filter');
legend('Filtered values','Unfiltered values');

%Problem c -Kalman Filter
lengthi=1000;

Q=0.001;
R=0.01;
A=0.9;
B=2;
P=zeros(1,lengthi);
X=zeros(1,lengthi);
P(1)=1;

for i=2:lengthi

X(i) = A*X(i-1)+B*un(i-1);
Ptemp = P(i-1);
newP = (A*Ptemp*A')+Q;
K=newP./(newP+R);
X(i)=X(i)+(K*(yn(i)-X(i)));
P(i) = (1-K).* newP;

end


figure;
plot(t,X,'r',t,xn,'b');
xlabel('Increments');
ylabel('Data');
title('Problem c :Kalman Filter');
legend('Filtered values','Unfiltered values');
