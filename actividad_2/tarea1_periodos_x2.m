clear 
clc

%===============================
%============ x2 ===============
%===============================
subplot(2,5,6);
n2=[0:3];
n3=[-4:-1]

x2 = [2 2 2 0];
x3 = [2 2 2 0];

N2 = 4 


%===Re(x2[n])===
subplot(1,4,1);
c2 = (1/N2)*fft(x2);
c3 = (1/N2)*fft(x3);

plot = stem([n3 n2],[real(c3) real(c2)])
plot.LineWidth = 1.5;
title("Real (C2m)")
xlabel("m")
ylabel("Cm")


%====Im(x2[n])=====
subplot(1,4,2);
plot = stem([n3 n2],[imag(c3) imag(c2)])
plot.LineWidth = 1.5;
title("Imaginario (C2m)") 
xlabel("m")
ylabel("Cm")


%==== ABS(x2[n]) ======
subplot(1,4,3);
plot = stem([n3 n2],[abs(c3) abs(c2)])
plot.LineWidth = 1.5;
title("Abs(C2m)") 
xlabel("m")
ylabel("Cm")


%=== Angle(x2[n]) ==
subplot(1,4,4);
plot = stem([n3 n2],[angle(c3) angle(c2)])
plot.LineWidth = 1.5;

title("Ang(C2m)") 
xlabel("m")
ylabel("Cm")
