clear;

syms n x;

n = 0:1:5;
a = [2 exp(-j*pi/2) 2*exp(j*pi) 1 2*exp(j*pi) exp(-j*pi/2)];

% Señal
N=6; %Periodo
x = N*ifft(a);

% Media de la Señal
mean_value = mean(x);
mean_values = [mean_value mean_value mean_value mean_value mean_value mean_value];

energia_media = (1/N) * sum(x.^2)
suma_coeficientes = sum(a.^2)