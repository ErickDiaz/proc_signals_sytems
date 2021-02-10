clear;

syms n x;

% Test 
%n = -3:1:2;
%x = [1 2*exp(j*pi) 2*exp(j*pi/2) 2 2*exp(j*pi/2) 2*exp(j*pi)];

n = 0:1:5;
a = [2 exp(-j*pi/2) 2*exp(j*pi) 1 2*exp(j*pi) exp(-j*pi/2)];

N=6; %Periodo
x = N*ifft(a);

subplot(1,3,1)
plot = stem(n, x);
plot.LineWidth = 1.5
xlabel('n');
ylabel('x_a[n]');
title('x_a[n]');

%======= xa, Re(cm) ===========
%cm = 0+round(cm*10^10)/10^10;

subplot(1,3,2);
plot = stem(n, real(x));
plot.LineWidth = 1.5;
xlabel('n');
ylabel('x_a[n]');
title('Re(c_m)');

%======= xa, Imag(cm) ===========
subplot(1,3,3);
plot = stem(n, imag(x));
plot.LineWidth = 1.5;
xlabel('n');
ylabel('x_a[n]');
title('Imag(c_m)');

