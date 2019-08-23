function p = factor_digits(n)

    %% Find primers and factors
    n_primes = primes(n);
    n_factors = factor(n);
    
    %% Find length of output array, defined by max prime
    p_length = find(n_primes == n_factors(end));
    p = zeros(1,p_length);
    
    %% Insert number of times primes met in factorization
    for k = 1:p_length
        p(k) = nnz(find(n_factors == n_primes(k)));
    end

    %% Flip the array, so that descending started from greatest
    p = flip(p);

end
