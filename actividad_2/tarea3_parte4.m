clear;

T=6;

inct=0.01;
t=0:inct:T;
fs=1/inct;
N=T/inct; % Definimos el número de muestras
x= 0.*(t<2.9)+2.*((t>=2.9)&(t<=3))+0.*(t>3);

subplot(1,4,1);
plot(t,x)
xlabel('t');
ylabel('x_1(t)');
title('x_1(t)');



X1=fft(x)/fs; % Calculamos la FFT y dividimos entre fs para ajustar la amplitud de la FFT y que se corresponda con la amplitud real de la FT
wn=2*pi*(-fs/2:fs/N:fs/2); % Definimos el eje de frecuencias centrado
incw=2*pi*fs/N; % Mínimo incremento frecuencial (entre muestras contiguas)

subplot(1,4,2);
plot(wn,abs(fftshift(X1))); % Representamos la FT

subplot(1,4,3);
plot(wn,angle(fftshift(X1)));

subplot(1,4,4);
plot(wn,ifft(X1)/inct)
