function [t,y] = forward_euler(t0,tf,y0,f,nsteps)
h = (tf-t0)/nsteps;
t = zeros(nsteps+1,1);
y = zeros(nsteps+1,1);
t(1) = t0;
y(1) = y0;
for i = 1:(nsteps)
    t(i+1) = t(i) + h;
    y(i+1) = y(i) + h*f(t(i));
end
