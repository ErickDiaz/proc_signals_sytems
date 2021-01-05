t = -8:1:8;
x_real = real(exp(j*(pi/2)*t));
x_imag = imag(exp(j*(pi/2)*t));
x_abs = abs(exp(j*(pi/2)*t));
x_angle = angle(exp(j*(pi/2)*t));

subplot(1,2,1);
% Grafica 1
plot(t, x_real);
hold on;
plot(t, x_imag);
hold off;
xlabel('t');
ylabel('x(t)');
title('Parte Real e imaginaria');
legend('real(exp(j*(pi/2)*t))', 'imag(exp(j*(pi/2)*t));')

% Grafica 2
subplot(1,2,2);
plot(t, x_abs);
hold on;
plot(t, x_angle);
hold off;
xlabel('t');
ylabel('x(t)');
title('Valor absoluto y fase de la señal');
legend('abs(exp(j*(pi/2)*t))', 'angle(exp(j*(pi/2)*t));')