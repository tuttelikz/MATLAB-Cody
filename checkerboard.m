function a = checkerboard(n)
    a = ones(n);
    
    for j = 1:2:n
        for i = 2:2:n
            a(i,j) = 0;
        end
    end
    
    for j = 2:2:n
        for i = 1:2:n
            a(i,j) = 0;
        end
    end
end
