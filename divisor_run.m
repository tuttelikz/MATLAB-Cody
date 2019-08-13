function [len,d] = divisor_run(a)
    
    %% Initial settings
    d = 1; % Greatest common divisor
    longest_chain = 1; % Longest sequence length

    %% Search within all combinations
    for i = 1:length(a)-1
        for j = i+1:length(a)
            cur_arr = a(i:j);
            %% If there is common divisor other than 1
            if myGcd(cur_arr) ~= 1
                %% Check if it is the longest chain
                if j - i > longest_chain
                    %% Assign new values
                    longest_chain = j - i;
                    %d = gcd(cur_arr);
                    d = myGcd(cur_arr);
                end
            end
        end
    end

    %% Real length of chain is one more due to indexing
    len = longest_chain + 1;

    %% Function to find GCD in array
    function g = myGcd(my_arr)
        g = my_arr(1);
        for k = 2:numel(my_arr)
            g = gcd(g,my_arr(k));
        end
    end

end
