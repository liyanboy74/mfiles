T=1;
fs=500;

f1=100;
f2=300;

t=0:1/fs:T-1/fs;
x=cos(2*pi*f1*t-pi/2)+0.1*sin(2*pi*f2*t);

y=fft(x);
z=fftshift(y);

l=length(y);
f=(-l/2:l/2-1)/l*fs;

subplot(2,1,1)
plot(f,abs(z))
xlabel("Frequency (Hz)")
ylabel("|y|")
grid on

subplot(2,1,2)
plot(t,x)
xlabel("Time")
ylabel("Volt")



