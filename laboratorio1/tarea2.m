inct = 0.1;
t = -8:inct:8;
x_real = real(exp(j*(pi/2)*t));
x_imag = imag(exp(j*(pi/2)*t));
x_abs = abs(exp(j*(pi/2)*t));
x_angle = angle(exp(j*(pi/2)*t));


% Grafica 1
subplot(2,1,1);
plot(t, x_real);
hold on;
plot(t, x_imag);
hold off;
xlabel('t');
ylabel('x(t)');
title('e^{j*(\pi/2)*t}');
legend('Parte real', 'Parte imaginaria')

% Grafica 2
subplot(2,1,2);
plot(t, x_abs);
hold on;
plot(t, x_angle);
hold off;
xlabel('t');
ylabel('x(t)');
title('e^{j*(\pi/2)*t}');
legend('Valor absoluto', 'Fase de la señal');