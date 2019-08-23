function maxDistPair = mostDistant(p)
    
    [row, ~] = size(p);
    
    maxDist = 0;
    
    for i = 1:row
        if i+1 <= row
            for j = i+1:row
                dist = norm(p(i,:) - p(j,:));
                if dist > maxDist
                    maxDist = dist;
                    maxDistPair = [i,j];
                end
            end
        end
    end
    
end
