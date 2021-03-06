ap=.4;
as=30;
fp=400;
fs=800;
F=2000;
omp=2*fp/F;
oms=2*fs/F;
[n,wn]=buttord(omp,oms,ap,as);
[b,a]=butter(n,wn);
w=0:0.01:pi;
[h,om]=freqz(b,a,w,'whole');
m=20*log10(abs(h));
an=angle(h);
subplot(2,1,1);plot(om/pi,m);
ylabel('gain in dB');xlabel('Normailsed Frequency');
subplot(2,1,2);plot(om/pi,an);
xlabel('Normalised Frequency');
ylabel('Phase in Radians');