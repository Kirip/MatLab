function dydt = ode_setup_demo(t,y)
dydt = [y(2); -cos(t)*y(1) + t.^2];
% right-hand side of our system, where y is treated as a 2D vector:
% d/dt [y(1);y(2)] = [y(2);-cos(t)*y(1) + t.^2]