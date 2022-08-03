function f = kolmogorov(t,n,eps,gamma,alpha)
    % n = variacion temporal de la especie.
    % eps = tasa de crecimiento intrinseco.
    % gamma = coeficiente de interaccion de las especies.
    % alpha = competicion intraespecie
    % g = funciones de crecimiento intrinseco.
    %   g_i = eps_i - alpha_i*N_i
    % L = funcion de trafico de depredadores.
    % POSIBLES CASOS:
    %  - Competicion:   eps(1) > 0, eps(2) > 0, gamma(1) < 0, gamma(2) < 0.
    %  - Depred-presa:  eps(1) > 0, eps(2) > 0, gamma(1) < 0, gamma(2) > 0.
    %  - Simbiosis:     eps(1) > 0, eps(2) > 0, gamma(1) > 0, gamma(2) > 0.
    %  - Amensalismo:   eps(1) > 0, eps(2) > 0, gamma(1) < 0, gamma(2) = 0.
    %  - Comensalismo:  eps(1) > 0, eps(2) > 0, gamma(1) > 0, gamma(2) = 0.
    g(1) = eps(1) - alpha(1)*n(1);
    g(2) = eps(2) - gamma(2)*n(2)./n(1);
    L = gamma(1)*n(1)./(1+n(1));
    f = [n(1)*g(1)-n(2)*L;n(2)*g(2)];
end