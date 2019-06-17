function maxCount = lengthOnes(x)
    %% convertsion into numerical array
    a = 1234;
    b = num2str(x)-'0';

    %% initializing
    count = 0;
    maxCount = 0;

    if b(1) == 1
        count = 1;
        maxCount = 1;
    end
    
    %% main
    for i = 2:length(b)
        if b(i) == 1
            if b(i) == b(i-1)
                seq_repeat = true;
            else
                seq_repeat = false;
            end

            if seq_repeat == true
                count = count + 1;
            else
                count = 1;
            end

            if count > maxCount
                maxCount = count;
            end
        else
            count = 0;
        end
    end
end
