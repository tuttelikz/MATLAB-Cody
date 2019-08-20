function d = levenshtein(s1,s2)

    %% Refer to Dynamic programming:
    %% https://www.youtube.com/watch?v=MiqoA-yF-0M
    
    s1_len = length(s1);
    s2_len = length(s2);

    %% Initializing dp-table
    %% s2 chars as rows & s1 chars as columns
    
    dp = zeros(s2_len+1,s1_len+1);
    dp(2:s2_len+1) = 1:s2_len;
    dp(1,2:s1_len+1) = 1:s1_len;

    for j = 2:s1_len+1
        for i = 2:s2_len+1
            if strcmp(s1(j-1),s2(i-1))
                dp(i,j) = dp(i-1,j-1);
            else
                dp(i,j) = min([dp(i-1,j),dp(i,j-1),dp(i-1,j-1)])+1;
            end
        end
    end
    
    %% Answer
    d = dp(i,j);

end
