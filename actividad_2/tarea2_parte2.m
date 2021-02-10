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

fig=figure; 
hax=axes;
hold on;
plot = stem(n, x);
plot = stem(n, a);
plot.LineWidth = 1.5

real_mean = real(mean_value);
line([0 5], [real_mean real_mean],get(hax,'YLim'),'Color',[1 0 0]);
xlabel('n');
ylabel('x_a[n]');
title('x_a[n]');
legend("x_a[n]", "a", "media")
