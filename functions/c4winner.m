function result = c4winner(b)
    
    %% Call funcrions to check horz, vert and diagonal
    [dimen_winner,dimen_winner_present] = checkDimensions(b);
    [diag_winner,diag_winner_present] = checkDiagonals(b);
    
    %% Winner determination
    if dimen_winner_present == true
        result = dimen_winner;
    elseif diag_winner_present == true
        result = diag_winner;
    else
        result = 0;
    end
    
    %% Checking horizontal and vertically
    function [dimen_winner,dimen_winner_present] = checkDimensions(b)
        dimen_winner = 0;
        [rows,cols] = size(b);
        
        %% Search vertically 4 pieces
        for i = 1:cols
            for j = 1:rows-3
                cur_col = b(j:j+3,i);
                if (nnz(find(cur_col == 1)) == 4) 
                    dimen_winner = 1;
                end
                if (nnz(find(cur_col == 2)) == 4) 
                    dimen_winner = 2;
                end
            end
        end

        %% Search horizontally 4 pieces
        for i = 1:rows
            for j = 1:cols-3
                cur_row = b(i,j:j+3);
                if (nnz(find(cur_row == 1)) == 4) 
                    dimen_winner = 1;
                end
                if (nnz(find(cur_row == 2)) == 4) 
                    dimen_winner = 2;
                end
            end
        end
        
        %% Return 1 if winner dimensionally is present
        if dimen_winner ~= 0 
            dimen_winner_present = true;
        else
            dimen_winner_present = false;
        end

    end

    function [diag_winner,diag_winner_present] = checkDiagonals(b)
        [h,~] = size(b);
        diag_winner = 0;
        
        %% Main diagonals from linear indexing
        diag_clockwise = b(1:size(b,1)+1:end); 
        diag_ctrclockwise = b(size(b,1):size(b,1)-1:end-size(b,1)+1);
        
        %% Check greatest diagonals
        if nnz(find(diag_clockwise == 1)) == 4 || nnz(find(diag_ctrclockwise == 1)) == 4
            diag_winner = 1;
        end
        if nnz(find(diag_clockwise == 2)) == 4 || nnz(find(diag_ctrclockwise == 2)) == 4
            diag_winner = 2;
        end
        
        %% Check smaller diagonals
        for i = 2:h
            
            diag_clockwise_down = b(i:size(b,1)+1:end-(i-1)*(size(b,1)));
            diag_clockwise_up = b((i-1)*size(b,1)+1:size(b,1)+1:end-(i-1));

            diag_ctrclockwise_down = b(i*size(b,1):size(b,1)-1:end-size(b,1)+i);
            diag_ctrclockwise_up = b(size(b,1)-(i-1):size(b,1)-1:end+1-i*size(b,1));

            if nnz(find(diag_clockwise_down == 1)) == 4 || nnz(find(diag_clockwise_up == 1)) == 4 ...
                    || nnz(find(diag_ctrclockwise_down == 1)) == 4 || nnz(find(diag_ctrclockwise_up == 1)) == 4 
                        diag_winner = 1;
            end
            if nnz(find(diag_clockwise_down == 2)) == 4 || nnz(find(diag_clockwise_up == 2)) == 4 ...
                    || nnz(find(diag_ctrclockwise_down == 2)) == 4 || nnz(find(diag_ctrclockwise_up == 2)) == 4 
                        diag_winner = 2;
            end
        end
        
        %% Return 1 if winner diagonally is present
        if diag_winner ~= 0 
            diag_winner_present = true;
        else
            diag_winner_present = false;
        end

    end

end
