clc
close all;
clear;

N=100;
t_s=0.02;
f_s=1/t_s;
t_start=-1;
t_end= 1;
t=t_start:t_s:t_end-t_s;
f=-f_s/2:f_s/N:f_s/2-f_s/N;

x1 = ones(1,N);
y1 = fftshift(fft(x1));
y1=y1/max(abs(y1));
x2 = zeros(1,N);
x2(1,N/2+1)=1;
y2 = fftshift(fft(x2));
y2=y2/max(abs(y2));

figure()
plot(t, x1);
xlabel('time')
ylabel('f1')
figure()
plot(f, abs(y1));
xlabel('Hz')
ylabel('f1')

figure()
plot(t, x2);
xlabel('time')
ylabel('f2')
figure()
plot(f, abs(y2));
xlabel('Hz')
ylabel('f2')