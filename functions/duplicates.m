function dups = duplicates(strs)

    dups = {};

    [~,ia,ic] = unique(strs);
    
    if ~isempty(ia)
        for i = 1:length(ia)
            if nnz(find(ic == ia(i))) > 1
                dups{end+1} = strs{i};
            end
        end
    end

end
