function f = verhulst(t,n,mu,k)
    % n = variacion temporal de la especie.
    % mu = tasa de crecimiento intrinseco.
    % k = capacidad del entorno, para N(0)> k, mueren por exceder la
    % capacidad maxima del medio.
    f = mu*n*(1-n/k);
end