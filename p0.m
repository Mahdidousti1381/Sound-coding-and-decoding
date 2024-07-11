f = -10:1:9;
ts = 1/20;
t = 0:ts:(1-ts);
x1 = exp(1i*2*pi*5*t) + exp(1i*2*pi*8*t);
y1 = fftshift(fft(x1));
x2 = exp(1i*2*pi*5*t) + exp(1i*2*pi*5.1*t);
y2 = fftshift(fft(x2));
plot(f, abs(y1));
xlabel('Hz')
ylabel('F1')
figure()
plot(f, abs(y2));
xlabel('Hz')
ylabel('F2')