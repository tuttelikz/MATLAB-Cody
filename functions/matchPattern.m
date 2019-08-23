function b = matchPattern(a)

    [r,~] = size(a);
    
    %% Find differences in each row
    for i = 1:r
        diff_matrix(i,:) = diff(a(i,:));
    end
    
    [rd,cd] = size(diff_matrix);
    
    %% Make pattern: '1' for increasing, '-1' for decreasing, and '0' same
    for i = 1:rd
        for j = 1:cd
            if diff_matrix(i,j) > 0
                pattern_matrix(i,j) = 1;
            elseif diff_matrix(i,j) < 0
                pattern_matrix(i,j) = -1;
            else
                pattern_matrix(i,j) = 0;
            end
        end
    end
    
    b = [];
    
    %% Compare patterns with the first row
    for m = 2:rd
        if isequal(pattern_matrix(1,:),pattern_matrix(m,:)) == 1
            b = [b,m];
        end
    end

end
