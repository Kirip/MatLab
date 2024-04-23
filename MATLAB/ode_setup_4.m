function dydt = ode_setup_4(t, y)
dydt = [y(2);y(3); exp(6.*t)-(sin(t).*y(1))-(5.*y(2))-((t.^3).*y(3))];