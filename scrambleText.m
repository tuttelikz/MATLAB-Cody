function sOut = scrambleText(sIn)
    
    %% Split string into words
    sIn = split(sIn,' ');
    
    for i = 1:length(sIn)
        %% Get word
        curWord = sIn{i};
        %% If word length >= 4 characters
        if length(curWord) >= 4
            %% Check for special characters
            if isstrprop(curWord(end),'alpha')
                %% Reverse string leaving first and last character
                newWord = strcat(curWord(1),reverse(curWord(2:end-1)),curWord(end));
            else
                %% Reverse string and leave character in place
                newWord = strcat(curWord(1),reverse(curWord(2:end-2)),curWord(end-1),curWord(end));
            end
            %% Replace string
            sIn{i} = newWord;
        end
    end
    
    %% Get resultant string
    sOut = strjoin(sIn);
    
end
