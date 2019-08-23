function [p1,p2] = goldbach(n)
    %% Find all the primes under the value of n
    prime_under = primes(n);
    
    %% Find all the combinations from these primes
    prime_combinations = nchoosek(prime_under,2);
    
    %% Find exactly these combinations which meet criterion 
    primes_condition = [];

    for i = 1:length(prime_combinations)
      if (sum(prime_combinations(i,:)) == n)
        primes_condition = [primes_condition, i];
      end
    end

    %% Return criterion combination (not as a vector)
    for j = 1:length(primes_condition)
        p1 = prime_combinations(primes_condition(j),1);
        p2 = prime_combinations(primes_condition(j),2);
    end
    
end
