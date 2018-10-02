%% 2.1
x = [1, 1.5, 2, 2.5];
y = [2.6, 3.4, 0.7, 0.8];
interpolatedX = 1:0.1:3;

P = polyfit(x, y, 3)

plot(interpolatedX, polyval(P, interpolatedX));
hold on;
scatter(x, y);

%% 2.2
P = polyfit(x, y, 2)

plot(interpolatedX, polyval(P, interpolatedX));
hold on;
scatter(x, y);

%% 3.1
f = @(x) 4/3*x^4 - 4/3*x^3 + 1/2*x^2;
fprim = @(x) 16/3*x^3 - 4*x^2 + x;
fbis = @(x) 16*x - 8*x + 1

%% 3.2
fun = @(x) 4/3*x.^4 - 4/3*x.^3 + x.^2/2;
x = 0:0.1:1;
y = fun(x);
xx = 0:0.01:1;

a = 0;
b = 1;

pn = csape(x,y,'variational');
pr = csape(x,y,'complete',[fprim(a),fprim(b)]);

plot(xx,fnval(pn,xx),xx,fnval(pr,xx),x,y,'o')