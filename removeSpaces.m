function b = removeSpaces(a)
    
    %% Exception: if Tab is first symbol
    if double(a(1)) == 9
        rest = a(2:end);
        rest = strtrim(rest);
        b = sprintf([char(9),rest]);
    else
        b = strtrim(a);
    end

end
