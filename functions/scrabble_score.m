function score = scrabble_score(str)

    p1 = ['e';'a';'i';'o';'n';'r';'t';'l';'s';'u'];
    p2 = ['d';'g'];
    p3 = ['b';'c';'m';'p'];
    p4 = ['f';'h';'v';'w';'y'];
    p5 = ['k'];
    p8 = ['j';'x'];
    p10 = ['q';'z'];
    
    score = 0;
    
    for i = 1:length(str)
        if ismember(str(i),p1)
            score = score + 1;
        elseif ismember(str(i),p2)
            score = score + 2;
        elseif ismember(str(i),p3)
            score = score + 3;
        elseif ismember(str(i),p4)
            score = score + 4;
        elseif ismember(str(i),p5)
            score = score + 5;
        elseif ismember(str(i),p8)
            score = score + 8;
        elseif ismember(str(i),p10)
            score = score + 10;
        end
    end

end
