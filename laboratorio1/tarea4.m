% Señal
n = 0:1:4;
x = n + 1;

xn = zeros(1,11);
xn(1:5) = x;

% Respuestas impulso
n = 0:1:2;

h = zeros(1,11);
h(1:3) = [2, 2, 2];

n = 0:1:10;
% Grafica 1
subplot(2,1,1);
stem(n,xn);
xlabel('t');
ylabel('x(n)');
title('Señal');


% Grafica 2
subplot(2,1,2);
stem(n,h);
xlabel('t');
ylabel('h(n)');
title('Respuesta impulso');
hold off;

% Sumas Parciales
y0 = x(1) .* desplaza(h,0);
y1 = x(2) .* desplaza(h,1);
y2 = x(3) .* desplaza(h,2);
y3 = x(4) .* desplaza(h,3);
y4 = x(5) .* desplaza(h,4);

% Convolucion
y = y0 + y1 + y2 + y3 + y4;

% Grafica Sumas Parciales
n = 0:1:10;
figure(2);
subplot(3,2,1);
stem(n, y0);
xlabel('n');
ylabel('y_0');
title('Suma parcial y_0');

subplot(3,2,2);
stem(n, y1);
xlabel('n');
ylabel('y_1');
title('Suma parcial y_1');

subplot(3,2,3);
stem(n, y2);
xlabel('n');
ylabel('y_2');
title('Suma parcial y_2');

subplot(3,2,4);
stem(n, y3);
xlabel('n');
ylabel('y_3');
title('Suma parcial y_3');

subplot(3,2,5);
stem(n, y2);
xlabel('n');
ylabel('y_2');
title('Suma parcial y_2');

subplot(3,2,6);
stem(n, y);
xlabel('n');
ylabel('y[n]');
title('Convolucion');