function [summa,index] = max_sum(v,n)
% la siguiente linea hace un "array" vacio esto es para el condicional pues
% un cero no funcionaria si la suma total es negativa
summa=int16.empty;
if n>length(v)
    summa=0; index=-1;
    return
end
for ii = 1:(length(v)-(n-1))
    %El condicional corre el bloque de codigo si "summa" está vacio o si es
    %menor a la suma total
    if isempty(summa) || summa < sum(v(ii:(ii+(n-1))))
        summa = sum(v(ii:(ii+(n-1))));
        index = ii;
    end
end