function flag = isItSquared(a)

    squares = a.^2;
    flag = false;
    
    for i = 1:length(a)
        if flag == true
            break;
        else
            for j = 1:length(squares)
                if a(i) == squares(j)
                    flag = true;
                    break;
                end
            end
        end
    end
    
end
