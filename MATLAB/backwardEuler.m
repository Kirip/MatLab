function [t, y] = backward_euler(f, tspan, ic, nsteps)
    % Set initial conditions
    t0 = tspan(1);
    tf = tspan(2);
    h = (tf-t0)/nsteps;

    % Create placeholder vectors
    t = zeros(1, nsteps+1);
    y = zeros(size(ic,1), nsteps+1);

    % Set initial values
    t(1) = t0;
    y(:,1) = ic;

    % Perform Backward Euler iterations
    for i = 1:nsteps
        t(i+1) = t(i) + h;
        y(:,i+1) = fzero(@(Y) Y - h*f(t(i+1),Y)-y(i),y(i));
    end
end