function new_seq = collatz(n)
    
    new_seq = [];
    new_seq = [new_seq, n];
    
    newval = n;
    
    while newval ~= 1
        if rem(newval,2) == 0
            new_seq = [new_seq, newval/2];
            newval = newval/2;
        else
            new_seq = [new_seq, 3*newval+1];
            newval = 3*newval + 1;
        end
    end
end
