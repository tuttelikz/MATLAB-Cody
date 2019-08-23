function romStr = dec2rom(x)

    romStr = [];
    elem_no = numel(num2str(x));

    if elem_no == 4
        switch fix(x/1000)
            case 3
                romStr = [romStr,'MMM'];
                x = rem(x,3000);
            case 2
                romStr = [romStr,'MM'];
                x = rem(x,2000);
            otherwise
                romStr = [romStr,'M'];
                x = rem(x,1000);
        end
    end

    elem_no = numel(num2str(x));

    if elem_no == 3
        switch fix(x/100)
            case 9
                romStr = [romStr,'CM'];
                x = rem(x,900);
            case 8
                romStr = [romStr,'DCCC'];
                x = rem(x,800);
            case 7
                romStr = [romStr,'DCC'];
                x = rem(x,700);
            case 6
                romStr = [romStr,'DC'];
                x = rem(x,600);
            case 5
                romStr = [romStr,'D'];
                x = rem(x,500);
            case 4
                romStr = [romStr,'CD'];
                x = rem(x,400);
            case 3
                romStr = [romStr,'CCC'];
                x = rem(x,300);
            case 2
                romStr = [romStr,'CC'];
                x = rem(x,200);
            otherwise
                romStr = [romStr,'C'];
                x = rem(x,100);
        end
    end

    elem_no = numel(num2str(x));

    if elem_no == 2
        switch fix(x/10) 
            case 9
                romStr = [romStr,'XC'];
                x = rem(x,90);
            case 8
                romStr = [romStr,'LXXX'];
                x = rem(x,80);
            case 7
                romStr = [romStr,'LXX'];
                x = rem(x,70);
            case 6
                romStr = [romStr,'LX'];
                x = rem(x,60);
            case 5
                romStr = [romStr,'L'];
                x = rem(x,50);
            case 4
                romStr = [romStr,'XL'];
                x = rem(x,40);
            case 3
                romStr = [romStr,'XXX'];
                x = fix(x,30);
            case 2
                romStr = [romStr,'XX'];
                x = rem(x,20);
            otherwise
                romStr = [romStr,'X'];
                x = rem(x,10);
        end
    end

    elem_no = numel(num2str(x));

    if elem_no == 1
        switch x
            case 9
                romStr = [romStr,'IX'];
            case 8
                romStr = [romStr,'VIII'];
            case 7
                romStr = [romStr,'VII'];
            case 6
                romStr = [romStr,'VI'];
            case 5
                romStr = [romStr,'V'];
            case 4
                romStr = [romStr,'IV'];  
            case 3
                romStr = [romStr,'III']; 
            case 2
                romStr = [romStr,'II']; 
            case 1
                romStr = [romStr,'I']; 
            otherwise
        end
    end
    
end
