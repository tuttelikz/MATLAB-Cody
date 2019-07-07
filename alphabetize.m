function alpha_list = alphabetize(list)
  
    list_split = regexp(list,' ','split');
    
    %% Table of second names and their indices
    secondNames = [];
    secondNamesIndex = [];
    
    for k = 1:length(list_split)
        secondNames = [secondNames, list_split{k}(end)];
        secondNamesIndex = [secondNamesIndex, k];
    end
    
    secondNames_table = table(secondNames',secondNamesIndex');
    
    %% Sorted by second name
    secondNames_table = sortrows(secondNames_table);
    
    %% Sorted list
    alpha_list = {};
    
    for m = 1:height(secondNames_table) 
        alpha_list{m} = list{secondNames_table{m,2}};
    end
    
    %% Workaround for Nx1 case
    if length(alpha_list) > 5
        alpha_list = alpha_list';
    end
    
end
