function [root] = mysol(func, x0, x1, accuracy)
  while 1
    korr = (x1 - x0) * func(x1)/(func(x1) - func(x0));
    if abs(korr) > accuracy
      x0 = x1;
      x1 = x1 - korr;
    else
      break
    end
  end

  root = x1 - korr;
end
