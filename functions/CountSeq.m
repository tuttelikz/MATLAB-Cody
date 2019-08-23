function result = CountSeq(x)

    x_nonrep = x;
    
    %% Remove consecutive repeating terms
    x_nonrep(diff(x_nonrep)==0) = [];
    
    %% Count number of repetitions for consecutive elements
    for i = 1:length(x_nonrep)
        %% Find indices where equal to current element
        indices = find(x == x_nonrep(i));
        %% By default number of elements is 1
        count = 1;
        %% If there are more repeating elements
        if length(indices) > 1
            for j = 1:length(indices)-1
                %% Check consecutiveness
                if indices(j+1) ~= indices(j) + 1
                else
                    count = count+1;
                end
            end
        end
        x_unique_count(i) = count;
    end
    
    %% Empty resultant array 
    result = zeros(1,length(x_nonrep)*2);
    counter = 1;
    
    %% Odd index elements are number of repetitions
    for i = 1:2:length(result)
        result(i) = x_unique_count(counter);
        counter = counter + 1;
    end
    
    %% Even index elements are elements themselves
    counter = 1;
    for i = 2:2:length(result)
        result(i) = x_nonrep(counter);
        counter = counter + 1;
    end

end
