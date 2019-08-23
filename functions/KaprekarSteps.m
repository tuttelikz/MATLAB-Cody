function y = KaprekarSteps(n)

    my_diff_n = n;
    countsteps = 0;
    
    %% Iterate until get '6174'
    while my_diff_n ~= 6174
        %% Check the difference
        my_diff_n = myDiff(my_diff_n);
        %% Increment count
        countsteps = countsteps+1;
        %% Symmetrical case
        if my_diff_n == 0
            y = Inf;
            return
        end
    end
    
    y = countsteps;
    
    %% Function to return difference of descending and ascending integer
    function new_diff = myDiff(diffVec)
        %% Convert to four digit string
        n_str = sprintf('%04d',diffVec); 
        
        vec = [];
        
        for i = 1:length(n_str)
            vec = [vec n_str(i)];
        end
        
        %% Sorted vector
        asc_vec = sort(vec,'ascend');
        des_vec = sort(vec,'descend');
        
        %% Difference
        new_diff = str2num(des_vec) - str2num(asc_vec);
    end
    
end
