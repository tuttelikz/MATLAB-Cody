function outStr = remove_small_words(inStr)
    
    %% Split strings
    inStr = split(inStr,' ');
    shortStrInd = [];
    
    %% Get indices of short strings
    for i = 1:length(inStr)
        if length(inStr{i}) <= 2
            shortStrInd = [shortStrInd,i];
        end
    end
    
    %% Remove them
    inStr(shortStrInd) = [];
    
    %% Join into new result
    outStr = strjoin(inStr);
    
end
