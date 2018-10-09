function y=myrungekutta(f,x0,xn,y0,h)
y=y0;
x=x0;
plot(x0,y0,'.')
hold on
while x < xn-h/2  % avbryter vid rätt xn, (avrundat x kan ligga strax under xn)
    k1 = h*f(x, y);
    k2 = h*f(x + h/2, y + k1/2);
    k3 = h*f(x + h/2, y + k2/2);
    k4 = h*f(x + h, y + k3);
    
    y = y + (k1 + 2*k2 + 2*k3 + k4)/6;
    x=x+h;
    plot(x,y,'.')
    disp([x y'])
end
hold off