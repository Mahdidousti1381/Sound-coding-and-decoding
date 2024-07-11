clc
close all;
clear;

N=100;
t_s=0.01;
f_s=1/t_s;
t_start=0;
t_end= 1;
t=t_start:t_s:t_end-t_s;
f=-f_s/2:f_s/N:f_s/2-f_s/N;

x=cos(30*pi*t+pi/4);
y = fftshift(fft(x));
y=y/max(abs(y));
tol = 1e-6;
y(abs(y) < tol) = 0;

figure()
plot(t, x);
xlabel('time')
ylabel('f1')

figure()
plot(f, abs(y));
xlabel('Hz')
ylabel('f1')

figure()
theta = angle(y);
plot(f,theta/pi)
xlabel 'Frequency (Hz)'
ylabel 'Phase / \pi'

