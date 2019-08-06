function wins = ticTacToe(a)

    wins = [];
        
    %% Rowwise check
    for i = 1:length(a)
        b = a(i,:); % Get each row
        for n = 1:length(b)
            if numel(find(b == 1)) > 1 % If two or more 'X'
                if ismember(0,b) % If empty space available
                    if i == 1
                        if ~ismember(1,find(b == 1))
                            wins = [wins,i];
                            break
                        elseif ~ismember(2,find(b == 1))
                            wins = [wins,i+3];
                            break
                        elseif ~ismember(3,find(b == 1))
                            wins = [wins,i+6];
                            break
                        end
                    elseif i == 2
                        if ~ismember(1,find(b == 1))
                            wins = [wins,i];
                            break
                        elseif ~ismember(2,find(b == 1))
                            wins = [wins,i+3];
                            break
                        elseif ~ismember(3,find(b == 1))
                            wins = [wins,i+6];
                            break
                        end
                    else 
                        if ~ismember(1,find(b == 1))
                            wins = [wins,i];
                            break
                        elseif ~ismember(2,find(b == 1))
                            wins = [wins,i+3];
                            break
                        elseif ~ismember(3,find(b == 1))
                            wins = [wins,i+3];
                            break
                        end
                    end
                end
            end
        end
    end
    
    %% Columnwise check
    for j = 1:length(a)
        b = a(:,j);
        for n = 1:length(b)
            if numel(find(b == 1)) > 1 % If two or more 'X'
                if ismember(0,b) % If empty space available
                    if j == 1
                        if ~ismember(1,find(b == 1))
                            wins = [wins,(j-1)*3+1]; %1
                            break
                        elseif ~ismember(2,find(b == 1))
                            wins = [wins,(j-1)*3+2]; %2
                            break
                        elseif ~ismember(3,find(b == 1))
                            wins = [wins,(j-1)*3+3]; %3
                            break
                        end
                    elseif j == 2
                        if ~ismember(1,find(b == 1))
                            wins = [wins,(j-1)*3+1]; %4
                            break
                        elseif ~ismember(2,find(b == 1))
                            wins = [wins,(j-1)*3+2]; %5
                            break
                        elseif ~ismember(3,find(b == 1))
                            wins = [wins,(j-1)*3+3]; %6
                            break
                        end
                    else
                        if ~ismember(1,find(b == 1))
                            wins = [wins,(j-1)*3+1]; %7
                            break
                        elseif ~ismember(2,find(b == 1))
                            wins = [wins,(j-1)*3+2]; %8
                            break
                        elseif ~ismember(3,find(b == 1))
                            wins = [wins,(j-1)*3+3]; %9
                            break
                        end
                    end
                end
            end
        end
    end
    
    %% Diagonal-1 check
    c = diag(a);
    
    for n = 1:length(c)
        if numel(find(c == 1)) > 1 % If two or more 'X'
            if ismember(0,c) % If empty space available
                if ~ismember(1,find(c == 1))
                    wins = [wins,1]; %1
                    break
                elseif ~ismember(2,find(c == 1))
                    wins = [wins,5]; %5
                    break
                elseif ~ismember(3,find(c == 1))
                    wins = [wins,9]; %9
                    break   
                end
            end
        end
    end
      
    %% Diagonal-2 check   
    d = diag(fliplr(a));
    
    for n = 1:length(d)
        if numel(find(d == 1)) > 1 % If two or more 'X'
            if ismember(0,d) % If empty space available
                if ~ismember(1,find(d == 1))
                    wins = [wins,7]; %7
                    break
                elseif ~ismember(2,find(d == 1))
                    wins = [wins,5]; %5
                    break
                elseif ~ismember(3,find(d == 1))
                    wins = [wins,3]; %3
                    break   
                end
            end
        end
    end
    
    if isempty(wins)
        wins = [wins,0];
    end
    
    wins = sort(wins);
    
end
