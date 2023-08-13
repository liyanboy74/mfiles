% RC low pass filter

r=1e3;
c=1e-6;
t=0.02;
f=50;
vin=5;

w=2*pi*f;

T=0:t/1000:t;
V=vin*sin(w*T);

d=sqrt(1+(w*r*c)^2);
fc=1/(2*pi*r*c);

V2=V/d;

subplot(2,1,1);
plot(T,V)
subplot(2,1,2);
plot(T,V2)

fprintf("The cutoff frequency value is %.2f Hz\n",fc);


