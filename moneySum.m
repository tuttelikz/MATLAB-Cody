function total_money = moneySum(a)

    dollar_index = strrep(a,char(36),'');
    comma_index = strrep(dollar_index,char(44),'');

    total_money = 0;

    for i = 1:length(comma_index)
        money_double = str2double(comma_index{i});
        total_money = total_money + money_double;
    end
    
end
