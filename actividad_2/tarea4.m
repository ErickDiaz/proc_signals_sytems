clear;

T=6;

inct=0.01;
t=0:inct:T;
fs=1/inct;
N=T/inct; % Definimos el número de muestras
x = 0.*(t<2.9)+2.*((t>=2.9)&(t<=3))+0.*(t>3);

media = mean(x);

% Calculamos FFT
xf = fft(x) ;

% Segun la ecuacion de analisis DFT X[m] para m=0 es
X_0= sum(x);

% Dividimos entre fs para ajustar la amplitud de la FFT y que se corresponda con la amplitud real de la FT
xf = xf/N;

X_0=X_0/N
fft_1 = xf(1)
media