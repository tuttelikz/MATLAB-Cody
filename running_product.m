function start_ind = running_product(s)

    %% Converting string into array of numbers
    s_num = [];
    
    for m = 1:length(s)
        s_num = [s_num, str2num(s(m))];
    end
    
    %% Calculating maximal product
    max_prod = 0;
    
    for n = 1:length(s_num)-4
        prod_cur = prod(s_num(n:n+4));
        
        if prod_cur > max_prod
            max_prod = prod_cur;
            start_ind = n; %% Starting index
        end
    end
    
end
