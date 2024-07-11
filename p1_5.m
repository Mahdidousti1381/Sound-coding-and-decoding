clc
close all;
clear;
N=1900;
t_s=0.02;
f_s=1/t_s;
t_start=-19;
t_end= 19;
t=t_start:t_s:t_end-t_s;
f=-f_s/2:f_s/N:f_s/2-f_s/N;
a=zeros(1,25);
b=ones(1,25);
x1=[a b b a];
x=[x1 x1 x1 x1 x1 x1 x1 x1 x1 x1 x1 x1 x1 x1 x1 x1 x1 x1 x1];
y = fftshift(fft(x));
y=y/max(abs(y));


figure()
plot(t, x);
xlabel('time')
ylabel('f1')

figure()
plot(f, abs(y));
xlabel('Hz')
ylabel('f1')
