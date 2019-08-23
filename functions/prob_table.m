function p = prob_table(x)
    
    elements = 1:max(x);
    
    for k = 1:length(elements)
        counts(k) = nnz(find(x == k));
        p(k) = counts(k)/length(x);
    end

end
