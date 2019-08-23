function new_a = find_palindrome(a)
    
    a_str = num2str(a);
    status_palindrome = check_palindrome(a_str);
    
    %% Recursion to find palindrome integer
    if status_palindrome == false
        new_a = str2num(a_str) + str2num(flip(a_str));
        new_a = find_palindrome(new_a);
    else
        new_a = a;
    end
    
    %% Function to check palindrome: symmetry of string
    function palindrom_status = check_palindrome(str_num)
        for i = 1:length(str_num)/2
            if strcmp(str_num(i),str_num(end+1-i)) == 1
                palindrom_status = true;
            else
                palindrom_status = false;
            end
        end
    end
    
end
