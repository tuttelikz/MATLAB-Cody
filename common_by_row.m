function vec_elem = common_by_row(A)
    
    %% Size of matrix
    [rows,columns] = size(A);
    %% Ideally: if element is present in each row: 
    %% it will be ascending vector from 1 to ROWS : [1 2 ... ROWS]
    vec_compare = [1:rows]';
    %% Final vector, where element will be stored
    vec_elem = [];

    for j = 1:columns
        %% Find rows where current element is present
        [r,~] = find(A == A(1,j));
        %% Find sorted unique values for rows
        uniq_sort = unique(r);
        %% Compare to ideal vector solution
        if isequal(uniq_sort,vec_compare) == 1
            %% If vector is empty
            if isempty(vec_elem) == 1
                vec_elem = [vec_elem, A(1,j)];
            else
                %% Case where repeating values occur
                if vec_elem(end) == A(1,j)
                else
                    vec_elem = [vec_elem, A(1,j)];
                end
            end
        end
    end
    %% Sort final vector
    vec_elem = sort(vec_elem);
    
end
