inct = 0.1;
t = -10:inct:10;
n = -10:1:10;

x1 = exp(j*(14*pi/17)*t);
x2 = cos(1/5 * t);

x1_n = exp(j*(14*pi/17)*n);
x2_n = cos(1/5 * n);

subplot(2,1,1);
% Grafica 1
stem(n,real(x1_n));
hold on;
plot(t, real(x1), 'Color', 'red', 'LineStyle','--');
xlabel('t');
ylabel('x_1');
title('x_1(n)=Re\{e^{j 14\pi/17 n}\}');
legend('discreta', 'continua')
hold off;

% Grafica 2
subplot(2,1,2)
stem(n,x2_n);
hold on;
plot(t, x2, 'Color', 'red', 'LineStyle','--');
xlabel('t');
ylabel('x_2');
title('x_2(n) = cos(1/5 n)');
legend('discreta', 'continua');
hold off;