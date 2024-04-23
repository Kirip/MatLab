function dy = pendulum_damped(t, y, D)
    dy = zeros(2, 1);
    dy(1) = y(2);
    dy(2) = -sin(y(1)) - D(t, y(1)) * y(2);
end