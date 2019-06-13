function new_str = refccn(str)

    consonants = strcat('[bcdfghjklmnpqrstvwxyz',upper('bcdfghjklmnpqrstvwxyz]'));
    consonant_index = regexp(str,consonants);
    
    new_str = [];
    
    for i = 1:length(str)
        if ismember(i,consonant_index) == 1
            continue
        else
            new_str = [new_str, str(i)];
        end
    end
end
