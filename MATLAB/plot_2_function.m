function[x, fx, gx]= plot_2_function(f,g,x0,x1)
% f and g are anyonymous functions of x 
% x0 and x1 are endpoints of our interval
x = linspace(x0,x1);
fx = f(x);
gx = g(x);

figure 
plot(x,fx)
hold on
plot(x,gx)