function summa = halfsum (M)
summa=0;
[row col]=size(M);
for y = 1:row
    for x = y:col
        % fprintf('M(%d,%d)\n',y,x);
        summa = summa + M(y,x);
    end
end

        