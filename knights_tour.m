function tf = knights_tour(a)
    
    %% Find all nonzero elements and their number
    [r,c,ind] = find(a);
    num_elems = numel(find(a));
    
    %% Make an array of: index, row and col
    cells = zeros(num_elems,3);
    cells(:,1) = ind;
    cells(:,2) = r;
    cells(:,3) = c;
    
    %% Sort according to ind
    cells_sorted = sortrows(cells);
    
    %% Set default state
    tf = true;
    
    for i = 1:size(cells_sorted,1)-1
        %% Knight move is 'L'shaped as defined here
        if (abs(cells_sorted(i+1,2)-cells_sorted(i,2)) == 1) && (abs(cells_sorted(i+1,3)-cells_sorted(i,3)) == 2) ...
                || (abs(cells_sorted(i+1,2)-cells_sorted(i,2)) == 2) && (abs(cells_sorted(i+1,3)-cells_sorted(i,3)) == 1)
            %% Skip correct knight moves
        else
            %% Set state to false once incorrect knight move occurs
            tf = false;
        end
    end
    
end
