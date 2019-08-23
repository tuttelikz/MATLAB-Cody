function s2 = remAin(s1)
    
    %% Split strings
    string_split = strsplit(s1,' ');
    
    %% Replace words which ends with 'ain' to empty
    x = regexprep(string_split,'\w*ain$','');
    
    %% Convert separate cells into string
    s2 = strjoin(x);
    
    %% Find exception: when ain is inside apostrophe
    [~,startIndex,endIndex] = regexp(s2, '(?<=")[^"]+(?=")', 'match');
    s2(startIndex:endIndex) = [];
    
end
