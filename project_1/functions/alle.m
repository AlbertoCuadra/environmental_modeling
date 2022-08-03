function f = alle(t,n,mu,k,M)
    % n = variacion temporal de la especie.
    % mu = tasa de crecimiento intrinseco.
    % k = capacidad del entorno, para N(0)> k, mueren por exceder la
    % capacidad maxima del medio.
    % M = umbral inferior.
    f = mu*n*(1-n/k)*(n/M-1);
end