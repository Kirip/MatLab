function x = newtons_method(g, g_prime, x0, tol)
    x = [x0];
    x_k = x(1);
    while abs(g(x_k)) >= tol
        x_kplus1 = x_k - (g(x_k)) / g_prime(x_k);
        x = [x, x_kplus1];
        x_k = x_kplus1;
    end
end

