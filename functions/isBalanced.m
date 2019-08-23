function tf = isBalanced(n)

    n_str = int2str(n);

    sum_left = 0;
    sum_right = 0;

    for i = 1:floor(length(n_str)/2)
        j = length(n_str) - i + 1;

        sum_left = sum_left + str2num(n_str(i));
        sum_right = sum_right + str2num(n_str(j));
    end

    if sum_left == sum_right
        tf = true;
    else
        tf = false;
    end
 
end
