function A = binary_numbers(n)
    
    %% Create (2^n)-by-n matrix
    A = zeros(2^n,n);
    
    for i = 2^n-1:-1:0
        
        cur_num = i;
        loop = 1;
        
        %% Imsert binary representations instead of decimal
        %% Row is represented by i and column by loop
        while cur_num > 0
            
            if rem(cur_num,2) == 1
                A(i+1,loop) = 1;
            else
                A(i+1,loop) = 0;
            end
            
            cur_num = fix(cur_num/2);
            loop = loop+1;
        end
        
    end
end
