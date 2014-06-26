wc=.5*pi;
N=25;
b=fir1(N,wc/pi,hamming(N+1));
w=0:.01:pi;
h=freqz(b,1,w);
plot(w/pi,abs(h));
hold on;
b=fir1(N,wc/pi,blackman(N+1));
w=0:.01:pi;
h=freqz(b,1,w);
plot(w/pi,abs(h),'-');
ylabel('Magnitude');
xlabel('Normalised Frequency');
hold off;

