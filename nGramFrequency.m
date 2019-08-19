function hifreq = nGramFrequency(s,n)

    max_occur = 1;
    
    for i = 1:(length(s)-(n-1))
        %% get n-legnth substring
        string = s(i:i+(n-1));
        %% count occurences of substring
        occurences = count(s,string);
        if occurences > max_occur
            max_occur = occurences;
            hifreq = string;
        end
    end
    
end
