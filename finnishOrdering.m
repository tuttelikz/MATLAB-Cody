function b = finnishOrdering(a)

    %% Assigning corresponding strings
    a_string = cell(1,length(a));
    
    for i = 1:length(a)
        switch a(i)
            case 0
                a_string{i} = 'nolla';
            case 1
                a_string{i} = 'yksi';
            case 2
                a_string{i} = 'kaksi';
            case 3
                a_string{i} = 'kolme';
            case 4
                a_string{i} = 'neljä';
            case 5
                a_string{i} = 'viisi';
            case 6
                a_string{i} = 'kuusi';
            case 7
                a_string{i} = 'seitsemän';
            case 8
                a_string{i} = 'kahdeksan';
            case 9
                a_string{i} = 'yhdeksän';
        end
    end
    
    %% Create value-string pairs in cell
    C = cell(10,2);
    C(1:length(a),1) = [num2cell(a)];
    C(1:length(a),2) = [a_string];
    
    %% Sorting alphabetically
    out = sortrows(C,2);
    
    %% Converting to appropriate matrix form
    b = cell2mat(out(:,1))';
    
end
