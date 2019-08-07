function s2 = rot13(s1)

    flag_special = false;
    k = strfind(s1,'&lt'); %% search for exceptions
    
    if ~isempty(k)
        flag_special = true;
    end
    
    s1_double = double(s1);
    
    for i = 1:length(s1_double)
        if (flag_special == true)
            if (i >= k) && (i < k+3) %% exception case
                s2_double(i) = s1_double(i);
                continue
            else
                s2_double(i) = rotMain(s1_double(i));
            end
        else
            s2_double(i) = rotMain(s1_double(i));
        end
    end
    
    s2 = char(s2_double);
    
    function s_out = rotMain(s_in)
        if (s_in >= 65 && s_in <= 90)   %% Large alphabet
            if s_in > 77 && s_in < 97
                diff_s1 = s_in - 77;
                s_out = 64 + diff_s1;  %% wrapping
            else
                s_out = s_in+13;
            end
        elseif (s_in >= 97 && s_in <= 122)   %% Small alphabet  
            if s_in > 109
                diff_s1 = s_in - 109;
                s_out = 96 + diff_s1;   %% wrapping
            else
                s_out = s_in+13;
            end
        else      %% Special chars
            s_out = s_in;
        end
    end
end
