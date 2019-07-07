function pmax = peakOfPeaks(nmax)

    %% Iterate from 1:nmax to call collatz sequence
    peaks = [];
    
    for i = 1:nmax
        peak_collatz = collatz(i);
        peaks = [peaks,peak_collatz];
    end
    
    pmax = max(peaks);
    
    %% Peak in Collatz sequence
    function peak_collatz = collatz(n)
        
        new_seq = [];
        new_seq = [new_seq, n];
        
        newval = n;
        %% Collatz
        while newval ~= 1
            if rem(newval,2) == 0
                new_seq = [new_seq, newval/2];
                newval = newval/2;
            else
                new_seq = [new_seq, 3*newval+1];
                newval = 3*newval + 1;
            end
        end
        %% Maximum in Collatz
        peak_collatz = max(new_seq);
        
    end
  
end
