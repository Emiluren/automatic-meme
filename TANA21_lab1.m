%% Lab 1 task 3
format long e;
a = 1.1;
b = 8.48e7;
c = 0.7;


x1_e7 = -2*c / (b + sqrt(b^2 - 4*a*c))
x2_e7 =  2*c / (b - sqrt(b^2 - 4*a*c))
roots([a, b, c]) - [x2_e7 x1_e7]'
b = 8.48e5;
x1_e5 = -2*c / (b + sqrt(b^2 - 4*a*c))
x2_e5 =  2*c / (b - sqrt(b^2 - 4*a*c))
roots([a, b, c]) - [x2_e5 x1_e5]'

format;
%% lab 1 task 4.2
true_limes = 1/2;

format long e;
x = logspace(0, -16, 17);
x = x(:);
f = (1-cos(x))./(x.^2);
[x f f-true_limes]
format;
%% Lab 1 task 4.3
format long e;
x = linspace(3e-5, 1e-3, 2000);
x = x(:);
f = (1-cos(x))./(x.^2);
f2 = abs(f - 1/2);
plot(x, f2)
%%
mu = 2e-53

