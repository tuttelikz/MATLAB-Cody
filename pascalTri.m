function y = pascalTri(n)
    
    if n == 0
        y = [1];
    elseif n == 1
        y = [1 1];
    elseif n == 2
        y = [1 2 1];
    else
        numele = n + 1;
        previous = pascalTri(n-1);
        
        y = zeros(1,numele);
        y(1) = 1;
        y(end) = 1;
        
        for i = 2:numele-1
            y(i) = previous(i)+previous(i-1);
        end
    end
    
end
