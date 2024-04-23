function [t, v] = backward_euler_vec(f, tspan, ic, nsteps)
    t0 = tspan(1);
    tf = tspan(2);
    h = (tf - t0) / nsteps; % Step size
    t = zeros(nsteps + 1,1); % Time vector
    v = zeros(nsteps + 1,length(ic)); % Solution matrix
    v(1) = ic; % Initial condition

    for i = 1:nsteps
        % The implicit update equation to solve
        func = @(nextY) nextY - Y(:, i) - h*f(t(i) + h, nextY);
        % Solve for the next Y using fsolve
        v(i+1) = fsolve(func, Y(:, i), optimoptions('fsolve', 'Display', 'none'));
    end
end
