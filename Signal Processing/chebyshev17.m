ap=1;
aps=15;
wp=.2*pi;
ws=.3*pi;
[n,wn]=cheb1ord(wp/pi,ws/pi,ap,aps);
[b,a]=cheby1(n,ap,wn);
w=0:0.01:pi;
[h,ph]=freqz(b,a,w);
m=20*log10(abs(h));
an=angle(h)
subplot(2,1,1);plot(ph/pi,m);
ylabel('gain in dB');xlabel('Normalised Frequency');
subplot(2,1,2);plot(ph/pi,an);
xlabel('Normalised Frequency');
ylabel('Phase in radians');
[b,a]=cheby1(n,ap,wn);