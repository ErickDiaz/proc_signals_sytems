clear 
clc


%===============================
%============ x1 ===============
%===============================
n0 = [0:5];
n1=[-6:-1];
x0 = exp(-j*(pi/3)*n0);
x1 = exp(-j*(pi/3)*n1);
N1 = 6 % pi/3 = 2*pi/N1 



%===== Re(x1[n]) =====
subplot(1,4,1);

c0 = (1/N1)*fft(x0);
c0=0+round(c0*10^10)/10^10
c1 = (1/N1)*fft(x1);
c1=0+round(c1*10^10)/10^10

hold on
plot = stem([n1 n0], [real(c1) real(c0)])
plot.LineWidth = 1.5;

title("Real(C1m)") 
xlabel("m")
ylabel("Cm")
grid on

%===== Im(x1[n]) ===
subplot(1,4,2);
plot = stem([n1 n0],[imag(c1) imag(c0)])
plot.LineWidth = 1.5;
title("Imaginario(C1m)") 
xlabel("m")
ylabel("Cm")


%==== Modulo(x1[n]) ===
subplot(1,4,3);
plot = stem([n1 n0],[abs(c1) abs(c0)])
plot.LineWidth = 1.5;
title("Abs(C1m)") 
xlabel("m")
ylabel("Cm")


%==== Anngle (x1[n]) ====
subplot(1,4,4);
plot = stem([n1 n0],[angle(c1) angle(c0)])
plot.LineWidth = 1.5;
title("Ang(C1m)") 
xlabel("m")
ylabel("Cm")



