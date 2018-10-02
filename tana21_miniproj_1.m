%% declaration of functions
f =  {
(@(x) exp(x))
(@(x) 2 * x)
(@(x) x^2 - 1)
(@(x) - 4*x^3 + (x^2)*2 - x)
(@(x) 4/(1 + x^2))
(@(x) sqrt(x))
(@(x) sin(2*pi*x))
};

integrals = [(exp(1)-1) 1 -2/3 -5/6 pi 2/3 0];
%% approximation of complexity

time = zeros(1, 10000);
for n = 1:10000
    tic;
    trapezoid(f{1}, n, 0, 1);
    time(n) = toc;
    if n == 1
        time(n)
    end
end
'done'
plot(time);

%% Approximation english(nogrannhetsordning)

error = zeros(7, 10);
hold off;
for func = 1:7
    correct = integrals(func);
    for n = 1:10
        error(func, n) = abs(correct - trapezoid(f{func}, n, 0, 1));
    end
    plot(error(func, :));
    func
    pause;
end

