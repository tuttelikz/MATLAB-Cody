function y = leadingDigit(x)
    
    y = [];
    
    for m = 1:length(x)
        %% Converting into string
        current_num = x(m);
        current_str = num2str(current_num);
    
        for k = 1:length(current_str)
            %% Cases when leading digit is to be ignored
            if strcmp(current_str(k),'0') || strcmp(current_str(k),'.') || strcmp(current_str(k),'-')
                continue;
            else
                y_elem = str2num(current_str(k));
                y = [y,y_elem];
                break;
            end
        end
    end
    
end
