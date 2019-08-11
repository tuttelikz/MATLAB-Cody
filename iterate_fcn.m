function fh2 = iterate_fcn(fh, n)

    %% Create anonymous function to call
    fh2 = @(x)rep_func(fh,n,x);
    
end

function y = rep_func(fh,n,x)

    %% Access the global x variable from initial statement
    y = x;
    
    %% Iterate function
    for i = 1:n
        y = fh(y);
    end
    
end
