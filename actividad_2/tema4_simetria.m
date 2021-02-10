clear;

T=6;

inct=0.01;
t=0:inct:T;
fs=1/inct;
N=T/inct; % Definimos el número de muestras
wn=2*pi*(-fs/2:fs/N:fs/2); % Definimos el eje de frecuencias centrado

x= 0.*(t<2.9)+2.*((t>=2.9)&(t<=3))+0.*(t>3);
X1=fft(x)/fs;

X1_recortada = X1(2:601);
X1_flip = fliplr(X1_recortada);

X1_conj = conj(X1_flip);


sum(X1_recortada-X1_conj)


