function tf = mono_increase(x)
    if length(x) > 1
        for i = 2:length(x)
            if x(i) <= x(i-1)
                tf = false;
                break
            else
                tf = true;
            end
        end
    else
        tf = true;
    end
end
