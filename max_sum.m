function [summa,index] = max_sum(v,n)
%
summa=int16.empty;
if n>length(v)
    summa=0; index=-1;
    return
end
for ii = 1:(length(v)-(n-1))
    if isempty(summa) || summa < sum(v(ii:(ii+(n-1))))
        summa = sum(v(ii:(ii+(n-1))));
        index = ii;
    end
end