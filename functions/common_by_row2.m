function y = common_by_row(x)
    %% total rows in x
    [x_r,~] = size(x);
    %% get all unique elements
    all_uniq = unique(x);
    y = [];
    
    for i = 1:length(all_uniq)
        %% find all rows with current unique element present
        [r,~] = find(x == all_uniq(i));
        %% sort and get unique rows
        r_uniq = unique(r);
        %% check if number of elements is greater than 50%, than push this element
        if numel(r_uniq) > floor(x_r/2)
            y = [y,all_uniq(i)];
        end
    end
    
end
