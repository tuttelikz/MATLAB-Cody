function total = no_digit_sum(n,m)
    
    %% Sequence of 1 to n
    numseq = 1:n;
    total = sum(numseq);
    a = string(numseq);
    
    %% If digit is met: reduce from total sum
    for i = 1:length(a)
        if contains(a(i),num2str(m)) == 1
            total = total - i;
        end
    end
    
end
