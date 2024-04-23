function dYdt = enzymeSystem(t, Y)
    A = Y(1);
    E = Y(2);
    C = Y(3);
    P = Y(4);
    dYdt = [-10*A*E; -10*A*E + C; 20*A*E - 2*C; C];
end