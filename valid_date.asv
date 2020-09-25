function valid = valid_date( y,m,d)
if  ~isscalar(y) || ~isscalar(m) || ~isscalar(y)
    valid=false;
    %error('only scalar values')
    return 
    
elseif sum([y m d]>0)<3
    valid = false;
    %error('only possitive values')
    return
    
elseif m>12
    valid = false;
    %error ('not valid month')
    return
    
elseif (rem(y,4)==0 && rem(y,100)~=0) || rem(y,400)==0
    valid=leap(y,m,d);
    
else
    valid = normal(y,m,d);
    
end

function valid = leap(y,m,d)
if(sum(m==[1 3 5 7 8 10 12])==1) && (d>31)
    %fprintf ('no valid day number!!!!!!!!!!\n')
    valid=false;
    return
    
elseif (sum(m==[4 6 9 11])==1) && (d>30)
    %fprintf ('no valid day number!!!!!!!!!!\n')
    valid=false;
    return
    
elseif m==2 && (d>29)
    %fprintf ('no valid day number!!!!!!!!!!\n')
    valid=false;
    return
    
else
    %fprintf('NORMAL YEAR %d %d %d \n', y, m, d)
    valid = true;
    
end

function valid = normal(y,m,d)
if(sum(m==[1 3 5 7 8 10 12])==1) && (d>31)
    %fprintf ('no valid day number!!!!!!!!!!\n')
    valid=false;
    return
    
elseif (sum(m==[4 6 9 11])==1) && (d>30)
    %fprintf ('no valid day number!!!!!!!!!!\n')
    valid=false;
    return
    
elseif m==2 && (d>28)
    %fprintf ('no valid day number!!!!!!!!!!\n')
    valid=false;
    return
    
else
    %fprintf('NORMAL YEAR %d %d %d \n', y, m, d)
    valid = true;
    
end
