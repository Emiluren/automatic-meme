%% 2.1 2.2
f = @(x, y) -5*y + 2.5;
xn = 5;

for h = [0.1 0.45, 0.6]
    figure;
    title(['euler', num2str(h)]);
    myeuler(f, 0, xn, 1, h);
    figure;
    title(['euler', num2str(h)]);
    myrungekutta(f, 0, xn, 1, h);
end

%% 3.2
v0 = [ -1 0.001 0 ]'

for h = [ 1.5, 2.1, 2.24, 2.26]
    figure;
    myeuler(@odefun, 0, 500, v0, h);
end

%% 3.3

v0 = [ -1 0.001 0 ]';
h = 0.4;
error = inf;
i = 0;
while error > 1e-5
    h = h / 2;
    i = i + 1;
    
    h2val = myeuler(@odefun, 0, 100, v0, 2 * h);
    hval = myeuler(@odefun, 0, 100, v0, h);
    error = abs(h2val(1) - hval(1));
end

h
i

%% 3.4

v0 = [ -1 0.001 0 ]';
[t, v] = ode23(@odefun,[0 100], v0);
format long e

%% 3.5
Kp = 0.1;
Ki = 0.001;

b = [ -0.001, 0.001 0 ]';

for Ki = [0.01, 0.05, 0.125]
    A = [ -5e-5 1 0; -Kp -1 -Ki; 1 0 0 ];

    %figure
    [t, v] = ode23(@(t, v) A*v+b, [0, 100], v0);
    size(t)
end

plot(t(2:180) - t(1:179))