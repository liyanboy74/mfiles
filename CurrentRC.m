r=470;                  % Ohm
c=0.22e-6;              % uF
f=50;                   % Hz
Vrms=220;               % Volt
t=0.05;                 % S
vz=5;                   % V Zener

T=0:t/1000:t;

v=sqrt(2)*Vrms;

xc=1/(2*pi*f*c);
z=r-1i*xc;
i=v/z;

V=v*sin(2*pi*f*T);
I=abs(i)*sin(2*pi*f*T+angle(i));

subplot(2,1,1);
plot(T,V)
title('Voltage')
grid on
ylabel V
xlabel T

subplot(2,1,2);
plot(T,I)
title('Current')
grid on
xlabel T
ylabel 'I (A)'

clc
fprintf("Current is %fA or %fmA by < %f°\n",abs(i),abs(i)*1000,rad2deg(angle(i)));
fprintf("Power of Resistor %.0f must bigger than %f W\n",r,abs(i)^2*r);
fprintf("Power of Zener %.0fV must bigger than %f W\n\n",vz,abs(i)*vz);



