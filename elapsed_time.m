function hours_elapsed = elapsed_time(d1,d2)

    t1 = datevec(d1,'yyyy/mm/dd HH:MM:SS');
    t2 = datevec(d2,'yyyy/mm/dd HH:MM:SS');
    
    hours_elapsed = etime(t2,t1)/3600;
    
end
