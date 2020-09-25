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

elseif(sum(m==[1 3 5 7 8 10 12])==1) && (d>31)
    %error ('no valid day number!!!!!!!!!!\n')
    valid=false;
    return
    
elseif (sum(m==[4 6 9 11])==1) && (d>30)
    %error ('no valid day number!!!!!!!!!!\n')
    valid=false;
    return
    
elseif ((rem(y,4)==0 && rem(y,100)~=0) || rem(y,400)==0) && m==2
    valid = leap(y,m,d);
    
elseif ((rem(y,4)~=0 && rem(y,100)==0) || rem(y,400)~=0) && m==2
    valid = normal(y,m,d);
    
else
    valid = true;
end

function valid = leap(y,m,d)    
if d>29
    %fprintf ('no valid day number!!!!!!!!!!\n')
    valid=false;
    return
    
else
    %fprintf('NORMAL YEAR %d %d %d \n', y, m, d)
    valid = true;
    
end

function valid = normal(y,m,d)
if d>28
    %fprintf ('no valid day number!!!!!!!!!!\n')
    valid=false;
    return
    
else
    %fprintf('NORMAL YEAR %d %d %d \n', y, m, d)
    valid = true;
    
end
