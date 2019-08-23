function new_str = refcn(str)

    vowels = '[AEIOUaeiou]';
    vowel_index = regexp(str,vowels);
    
    new_str = [];
    
    for i = 1:length(str)
        if ismember(i,vowel_index) == 1
            continue
        else
            new_str = [new_str, str(i)];
        end
    end
    
end
