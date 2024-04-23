function dYdt = enzymeSystem(t, Y)
    % Unpack the input vector Y for readability
    A = Y(1);
    E = Y(2);
    C = Y(3);
    P = Y(4); % Though P' does not depend on P directly, it's included for completeness
    
    % Define the system of differential equations
    dAdt = -10*A*E;
    dEdt = -10*A*E + C;
    dCdt = 20*A*E - 2*C;
    dPdt = C; % Given as the derivative of P is equal to C
    
    % Return the derivatives as a column vector
    dYdt = [dAdt; dEdt; dCdt; dPdt];
end
