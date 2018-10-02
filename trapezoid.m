function [result] = trapezoid(f, n, a, b)
h = (b-a)/n;
result = 0;
for i = a:h:b
    result = result + f(i);
end
result = result - (f(a) + f(b))/2;
result = result * h;
%{
for i = 1:n-1
    result = result + 2*f(a + i*((b-a)/n));
end

result = result * (b-a)/n / 2;
%}
end

