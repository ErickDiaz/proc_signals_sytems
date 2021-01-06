% Señal
n = 0:1:4;
x = n + 1;

xn = zeros(1,11);
xn(1:5) = x;

% Respuestas impulso
n = 0:1:2;

h = zeros(1,11);
h(1:3) = [2, 2, 2];

n = 0:1:20;

z = conv(xn,h);

stem(n, z);
xlabel('n');
ylabel('z[n]');
title('Convolucion z[n]=x[n]*h[n]');