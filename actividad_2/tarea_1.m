clear;

syms n x1;

%===============================
%============ x1 ===============
%===============================
n = 0:1:5;
x1=exp(-j*pi/3*n);

subplot(2,5,1);
plot = stem(n, x1);
plot.LineWidth = 1.5;
xlabel('n');
ylabel('x_1[n]');
title('x_1[n]');

%======= x1, Re(cm) ===========
% Coeficientes DTFS para x1
N=6; %Periodo
cm = (1/N)*fft(x1);
cm = 0+round(cm*10^10)/10^10;

subplot(2,5,2);
plot = stem(n, real(cm));
plot.LineWidth = 1.5;
xlabel('n');
ylabel('cm');
title('Re(c_m)');

%======= x1, Imag(cm) ===========
% Coeficientes DTFS para x1
N=6; %Periodo

subplot(2,5,3);
plot = stem(n, imag(cm));
plot.LineWidth = 1.5;
xlabel('n');
ylabel('cm');
title('Imag(c_m)');

%======= x1, Modulo(cm) ===========
% Coeficientes DTFS para x1
N=6; %Periodo

subplot(2,5,4);
plot = stem(n, abs(cm));
plot.LineWidth = 1.5;
xlabel('n');
ylabel('cm');
title('Modulo c_m');

%======= x1, Fase(cm) ===========
% Coeficientes DTFS para x1
N=6; %Periodo

subplot(2,5,5);
plot = stem(n, angle(cm));
plot.LineWidth = 1.5;
xlabel('n');
ylabel('cm');
title('Fase c_m');

%======== x1, Inversa ========
% Operacion inversa
x1_inverse = N * ifft(cm);



%===============================
%============ x2 ===============
%===============================
n = 0:1:3;
x2 = [2 2 2 0];
subplot(2,5,6);

plot = stem(n, x2);
plot.LineWidth = 1.5;
xlabel('n');
ylabel('x_2[n]');
title('x_2[n]');

%======= x2, Re(cm) ===========
N=6; %Periodo
cm = (1/N)*fft(x2);
cm = 0+round(cm*10^10)/10^10;

subplot(2,5,7);
plot = stem(n, real(cm));
plot.LineWidth = 1.5;
xlabel('n');
ylabel('cm');
title('Re(c_m)');

%======= x2, Imag(cm) ===========
N=4; %Periodo

subplot(2,5,8);
plot = stem(n, imag(cm));
plot.LineWidth = 1.5;
xlabel('n');
ylabel('cm');
title('Imag(c_m)');

%======= x2, Modulo(cm) ===========
N=4; %Periodo

subplot(2,5,9);
plot = stem(n, abs(cm));
plot.LineWidth = 1.5;
xlabel('n');
ylabel('cm');
title('Modulo c_m');

%======= x2, Fase(cm) ===========
N=4; %Periodo

subplot(2,5,10);
plot = stem(n, angle(cm));
plot.LineWidth = 1.5;
xlabel('n');
ylabel('cm');
title('Fase c_m');

%======== x1, Inversa ========
% Operacion inversa
x1_inverse = N * ifft(cm);



%nx2p=[-4:3];
%cmx2p=[cm2 cm2];



