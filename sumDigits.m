function sum = sumDigits(n)

    deg = 2^n;
    chr = int2str(deg);
    
    sum = 0;
    
    for i = 1:length(chr)
        sum = sum + str2num(chr(i));
    end
    
end
