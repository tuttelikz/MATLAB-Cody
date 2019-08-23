function ind = subset_sum(v,n)

    ind = [];
    first_flag = false;
    
    for i = 1:length(v)
        %% Find all possible combinations
        subset_combinations = nchoosek(v,i);
        [r,~] = size(subset_combinations);
        for j = 1:r
            %% Checking if one of subset combinations meets condition
            if sum(subset_combinations(j,:)) == n
                subset_comb_elems = subset_combinations(j,:);
                for p = 1:length(subset_comb_elems)
                    %% If there is no previous element in vector: then add onto
                    if first_flag == false
                        ind = [ind,find(v == subset_comb_elems(p))];
                        first_flag = true;
                    else
                        %% Else, check if previous element equals to current: then ignore
                        if ind(end) ~= find(v == subset_comb_elems(p))
                            ind = [ind,find(v == subset_comb_elems(p))];
                        end
                    end
                end
            end
        end
    end
    
end
