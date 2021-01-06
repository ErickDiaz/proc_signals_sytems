t = -10:1:10;
x1 = exp(j*(14*pi/17)*t);
x2 = cos(1/5 * t);

subplot(2,1,1);
% Grafica 1
stem(t,real(x1));
hold on;
plot(t, real(x1), 'Color', 'red', 'LineStyle','--');
xlabel('t');
ylabel('x_1(t)');
title('x_1(n)=Re\{e^{j 14\pi/17 n}\}');
legend('discreta', 'continua')
hold off;

% Grafica 2
subplot(2,1,2)
stem(t,x2);
hold on;
plot(t, x2, 'Color', 'red', 'LineStyle','--');
xlabel('t');
ylabel('x_2(t)');
title('x_2(n) = cos(1/5 n)');
legend('discreta', 'continua');
hold off;