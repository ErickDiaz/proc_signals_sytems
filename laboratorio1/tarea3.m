t = -10:1:10;
x1 = exp(j*(14*pi/17)*t);
x2 = cos(1/5 * t);

subplot(2,1,1);
% Grafica 1
stem(t,real(x1));
hold on;
plot(t, real(x1), 'Color', 'red', 'LineStyle','--');
hold off;

% Grafica 2
subplot(2,1,2)
stem(t,x2);
hold on;
plot(t, x2, 'Color', 'red', 'LineStyle','--');
hold off;