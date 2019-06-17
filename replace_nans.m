function out = replace_nans(in)
    
    out = in;
    
    %% Starting from the end & approach to the start
    for i = length(out):-1:1
        if isnan(out(i)) == 1
            out(i) = checkPrevious(out,i);
        else
            continue;
        end
    end
    
    %% Recursion function
    function out_value = checkPrevious(A,k)
        if k == 1
            out_value = 0;
        else
            if isnan(A(k-1)) == 1        
                out_value = checkPrevious(A,k-1);
            else
                out_value = A(k-1);
            end    
        end
    end

end
