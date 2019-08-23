function [row,col] = qwerty_coord(key)

    r1 = '1234567890';
    r2 = 'qwertyuiop';
    r3 = 'asdfghjkl:';
    r4 = 'zxcvbnm,./';

    qwerty_table = cell(4,10);

    for j = 1:length(r1)
        qwerty_table{1,j} = r1(j);
        qwerty_table{2,j} = r2(j);
        qwerty_table{3,j} = r3(j);
        qwerty_table{4,j} = r4(j);
    end

    [row,col] = find(ismember(qwerty_table,key));
    
end
