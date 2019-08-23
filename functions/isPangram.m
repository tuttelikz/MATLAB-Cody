function tf = isPangram(s)
    
    letters_small = 'abcdefghijklmnopqrstuvwxyz';
    letters_capital = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    
    %% Find indexes where string characters are members of alphabet
    [~,index_small] = ismember(s,letters_small);
    [~,index_capital] = ismember(s,letters_capital);
    
    %% Combine to find total unique sorted indexes
    index = [index_small index_capital];
    index_unique = unique(index);
    
    %% Remove zeros (unnecessary)
    index_unique(index_unique == 0) = [];
    
    %% Check to pangram condition
    array_check = 1:26;
    tf = isequal(index_unique,array_check);
    
end
