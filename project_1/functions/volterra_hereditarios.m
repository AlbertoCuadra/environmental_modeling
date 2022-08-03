function f = volterra_hereditarios(t,n,mu,k,M,tau)% SIN TERMINAR
    % n = variacion temporal de la especie.
    % mu = tasa de crecimiento intrinseco.
    % k = capacidad del entorno, para N(0)> k, mueren por exceder la
    % capacidad maxima del medio.
    % M = umbral inferior.
    % tau = retardo.
    f = mu*n*(1-n/k);
end
