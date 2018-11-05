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
