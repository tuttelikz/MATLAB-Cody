function doors_open = which_doors_open(n)

    doors_condition = zeros(1,n);

    for i = 1:n
        i_start = i;
        step = i;
        for j = i_start:step:n
            doors_condition(1,j) = ~doors_condition(1,j);
        end
    end

    doors_open = find(doors_condition);
    
end
