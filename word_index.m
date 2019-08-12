function [word_table,str_index_list] = word_index(str_list)
    
    str_index_list = cell(size(str_list));    
    
    %% Get concatenated string chain from all cells
    cell_string_chain = '';
    length_t = size(str_list,1)*size(str_list,2);
    
    for i = 1:length_t
        sIn = str_list{i};
        if i == 1
            cell_string_chain = sIn;
        else
            cell_string_chain = strcat(cell_string_chain," ",sIn);
        end
    end
    
    %% Get master table from chain of strings
    sIn = split(cell_string_chain,' ');
    word_table = unique(sIn)';
    
    %% Get locations met in cell from master table
    loc_vec = [];
       
    for j = 1:length_t
        loc_vec = [];
        curCell = str_list{j};
        words = strsplit(curCell);
        for k = 1:length(words)
            [~,Locb] = ismember(words{k},word_table);
            loc_vec = [loc_vec,Locb];
        end
        %% Output list of locations
        str_index_list{j} = loc_vec;
    end

end
