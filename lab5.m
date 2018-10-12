%% Task 2.1

fun = @(x) x^2 -2;

roots([1 0 -2])
fzero(fun, [-2 0])
fzero(fun, [0 2])

%% task 3.1

x5 = -1:0.1:1;
x = x5;

x5.^5;
x + 1;
plot(x5);
hold on
plot(x);
hold off

%% task 5

f = @(x) x^2 + 2;
fp = @(x) 2*x;
newtonraphson(f, fp, sqrt(-1), 3)

%% 
f = @(x) x^2 - 2;
fp = @(x) 2*x;
newtonraphson(f, fp, 1, 6)


%% task 6

x = -4:0.01:4;

plot(x, sin(x));
hold on;
plot(x, sin(x) - 0.1);
hold off;

%% 


plot(x, sin(10* x));
hold on;
plot(x, sin(10*x) - 0.1);
hold off;