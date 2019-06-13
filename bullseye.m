function A = bullseye(n)

    A = zeros(n);
    middle = ceil(n/2);

    A(middle,middle) = 1;
    
    Incr = 1;
    Init = 1;
    
    while (middle - Incr) > 0
        A(middle-Incr, middle-Incr:middle+Incr) = Init + Incr;
        A(middle+Incr, middle-Incr:middle+Incr) = Init + Incr;
        A(middle-Incr:middle+Incr, middle-Incr) = Init + Incr;
        A(middle-Incr:middle+Incr, middle+Incr) = Init + Incr;
        Incr = Incr + 1;
    end
    
end
