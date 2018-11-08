function [xs] = fixedsecant(func, x0, x1, n)
  xs = zeros(n + 2, 1);
  xs(1) = x0;
  xs(2) = x1;

  for i = 1:n
    korr = (x1 - x0) * func(x1) / (func(x1) - func(x0));
    x0 = x1;
    x1 = x1 - korr;
    xs(i + 2) = x1;
  end
end

% Polynom
xs = fixedsecant(@(x) (x+2)*x*(x-3), -1.5, -2.5, 10);
errors = abs(xs(2:11) - xs(1:10))
logs = log(errors(2:10) ./ errors(1:9))
ps = logs(2:8) ./ logs(1:7)

% Dubbelrot
results = fixedsecant(@(x) x*x, 1.5, 1.55, 520);
xs = results(500:520)
errors = abs(xs(2:21) - xs(1:20))
logs = log(errors(2:19) ./ errors(1:18))
ps = logs(2:18) ./ logs(1:17)
