function b = pal(a)
    
    %% Initial settings
    max_palindrome_len = 1;
    b = '';
    
    %% Get combinations of substrings
    for i = 1:length(a)-1
        for j = i+1:length(a)
            cur_str = a(i:j);
            %% If palindrome
            if strcmp(cur_str,fliplr(cur_str))
                %% If longest palindrome: store it
                if length(cur_str) > max_palindrome_len
                    max_palindrome_len = length(cur_str);
                    b = cur_str;
                end
            end
        end
    end
    
end
