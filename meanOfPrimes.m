function out = meanOfPrimes(in)
    
    primeTF = isprime(in);
    primeTFIndex = find(primeTF);
    x = [];
    
    for i = 1:length(primeTFIndex)
        x = [x, in(primeTFIndex(i))];
    end
    
    out = mean(x);
end
