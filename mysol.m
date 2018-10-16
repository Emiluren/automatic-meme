function [root] = mysol(func, x0, x1, accuracy)
korr = ((x1 - x0)* func(x1)/(func(x1) - func(x0)));
if korr > accuracy
    root = (mysol(func, x1, x1-korr, accuracy));
else
    root = x1 - korr;
end
end