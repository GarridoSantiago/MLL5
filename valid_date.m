function valid = valid_date( y,m,d)

%los comentarios dentro de los condicionales sólo los use para ir
%construllendo mi función pero no son necesarios

%este condicional checa si los valores dados son escalares
if  ~isscalar(y) || ~isscalar(m) || ~isscalar(y)
    valid=false;
    %error('only scalar values')
    return 
    
%este condicional checa que el dia año y mes sean positivos
elseif sum([y m d]>0)<3
    valid = false;
    %error('only possitive values')
    return

%este condicional regresa un falso si el numero de mes es mayor  12
elseif m>12
    valid = false;
    %error ('not valid month')
    return

%este condicional checa que el numero de día no se amayor a 31 para los
%meses 1 3 5 7 8 10 y 12
elseif(sum(m==[1 3 5 7 8 10 12])==1) && (d>31)
    %error ('no valid day number!!!!!!!!!!\n')
    valid=false;
    return
    
%este condicional checa el día no sea mayor a 30 para los meses 4 6 9 y 11
elseif (sum(m==[4 6 9 11])==1) && (d>30)
    %error ('no valid day number!!!!!!!!!!\n')
    valid=false;
    return

%este condicional te lleva a la función leap(bisiesto), que esta más abajo,
%en caso de que el coumpla con las condiciones de año bisiesto 
elseif ((rem(y,4)==0 && rem(y,100)~=0) || rem(y,400)==0) && m==2
    valid = leap(y,m,d);
    
%este condicional te lleva a la función normal si cumple con las condiciones de año normal   
elseif ((rem(y,4)~=0 && rem(y,100)==0) || rem(y,400)~=0) && m==2
    valid = normal(y,m,d);
    
else
    valid = true;
end

%funcion para año bisiesto
function valid = leap(y,m,d)    
if d>29
    %fprintf ('no valid day number!!!!!!!!!!\n')
    valid=false;
    return
    
else
    %fprintf('NORMAL YEAR %d %d %d \n', y, m, d)
    valid = true;
    
end

%funcion para año normal
function valid = normal(y,m,d)
if d>28
    %fprintf ('no valid day number!!!!!!!!!!\n')
    valid=false;
    return
    
else
    %fprintf('NORMAL YEAR %d %d %d \n', y, m, d)
    valid = true;
    
end
