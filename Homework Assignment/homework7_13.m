function diff=homework7_13(time1, ampm, time2, ampm2)
  diff = [];
  %Checking if the user is trying to go from PM to AM
  if (strcmpi(ampm2,'AM') && strcmpi(ampm,'PM'))
    fprintf("Invalid time interval");
    return;
  elseif(strcmpi(ampm2,ampm))
    if (time1(1) > time2(1) || (time1(1) == time2(1) && time1(2) > time2(2)))
      fprintf("Invalid time interval");
      return;
    end
  end
  
  %Making the values military time
  if(strcmpi(ampm,'PM'))
    time1(1) = time1(1) + 12;
  end
  
  if(strcmpi(ampm2,'PM'))
    time2(1) = time2(1) + 12;
  end
 
  if(time1(2) > time2(2))
    time2(1) = time2(1) - 1;
    time2(2) = time2(2) + 60;
  end
  diff = time2 - time1;
 
end