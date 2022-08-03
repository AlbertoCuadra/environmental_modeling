function f = lotka_volterra(t,n,eps,gamma)
    % n = variacion temporal de la especie.
    % eps = tasa de crecimiento intrinseco.
    % gamma = coeficiente de interaccion de las especies.
    % POSIBLES CASOS:
    %  - Competicion:   eps(1) > 0, eps(2) > 0, gamma(1) < 0, gamma(2) < 0.
    %  - Depred-presa:  eps(1) > 0, eps(2) > 0, gamma(1) < 0, gamma(2) > 0.
    %  - Simbiosis:     eps(1) > 0, eps(2) > 0, gamma(1) > 0, gamma(2) > 0.
    %  - Amensalismo:   eps(1) > 0, eps(2) > 0, gamma(1) < 0, gamma(2) = 0.
    %  - Comensalismo:  eps(1) > 0, eps(2) > 0, gamma(1) > 0, gamma(2) = 0.
    f = [n(1)*(eps(1)+gamma(1)*n(2));n(2)*(eps(2)+gamma(2)*n(1))];
end