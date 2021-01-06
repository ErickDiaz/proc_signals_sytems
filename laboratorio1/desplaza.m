function [y] = desplaza(x, n)
y = [zeros(1, n) x(1:end-n)];
end

