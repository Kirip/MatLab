function dydt = ode_setup_3(t, y)
dydt= [y(2); y(2) - y(2).*((y(1).^2)) - y(1)];