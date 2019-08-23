function status_balanced = isBalancedParentheses(inStr)

    count_open = 0;
    flag_unbalanced = false;
    
    for i = 1:length(inStr)
        %% If paranthesis starts with '('
        if count_open < 0
            status_balanced = false;
            flag_unbalanced = true;
            break
        else
            if strcmp(inStr(i),'(') == 1
                count_open = count_open + 1;
            end
            
            if strcmp(inStr(i),')') == 1
                count_open = count_open - 1;
            end
        
        end
    end
    
    if flag_unbalanced == false
        if count_open == 0
            status_balanced = true;
        else
            status_balanced = false;
        end
    end
    
end
