% Zero-order reaction [A] = −kt + [A]0
function dNO2dt = zeroOrder(~, NO2, k)
    dNO2dt = -k;
    if NO2 < 0
        dNO2dt = 0; % Prevent negative concentrations
    end
end
