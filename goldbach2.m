function combinations_number = goldbach2(n)

    %% Find all the primes under the value of n
    prime_under = primes(n);
    
    %% Find all the combinations from these primes
    prime_combinations = nchoosek(prime_under,2);
    
    %% Adding self-repeating cases, eg: 10 = 5+5
    for c = 1:length(prime_under)
        prime_combinations = [prime_combinations; [prime_under(c) prime_under(c)]];
    end
    
    %% Find exactly these combinations which meet criterion 
    primes_condition = [];
    
    for i = 1:length(prime_combinations)
        if (sum(prime_combinations(i,:)) == n)
            primes_condition = [primes_condition, i];
        end
    end
    
    combinations_number = length(primes_condition);
    
end
