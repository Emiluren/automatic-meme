
mu = 2^-53;

%%% 3.1
a = 1.1;
c = 0.7;

%%
b = 8.48e5;

x1 = (-b + sqrt(b^2 - 4*a*c))/(2*a)
x2 = (-b - sqrt(b^2 - 4*a*c))/(2*a)

errors = roots([a, b, c]) - [x2, x1]'

%%
b = 8.48e7;

x1 = (-b + sqrt(b^2 - 4*a*c))/(2*a)
x2 = (-b - sqrt(b^2 - 4*a*c))/(2*a)

errors = roots([a, b, c]) - [x2, x1]'