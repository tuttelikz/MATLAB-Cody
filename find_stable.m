function polyOut = find_stable(in)

    polyOut = in;
    ind_vec = [];
    
    for i = 1:length(polyOut)
        %% Find all postivie real roots and store their index
        if (all(real(roots(polyOut{i})) <= 0)) == 0
            ind_vec = [ind_vec,i];
        end
    end
    
    %% Remove cell elements from original cell
    polyOut(ind_vec) = [];

end
