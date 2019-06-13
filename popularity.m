function output_array = popularity(input_array)
    
    %% First make unique array
    unique_input_array = unique(input_array);
    
    %% Create occurences - keys pair array
    table_occurence = zeros(length(unique_input_array),2);
    table_occurence(:,2) = unique_input_array';
    
    for i = 1:length(unique_input_array)
        occurrence = numel(find(input_array == unique_input_array(i)));
        table_occurence(i,1) = occurrence;
    end
    
    %% Sort by occurences in descending order
    sorted_table = sortrows(table_occurence,'descend');
    occurences = sorted_table(:,1);
    keys = sorted_table(:,2);
    
    %% Find keys that have same occurences and store sorted keys in new array
    occurences_total = unique(occurences,'stable');
    output_array = [];
    
    for j = 1:length(occurences_total)
        [row,~] = find(occurences == occurences_total(j));
        aa = sort(keys(row));
        output_array = [output_array, [aa']];
    end
    
end
