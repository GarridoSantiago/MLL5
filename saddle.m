function indices=saddle2(M)
    indices=[]; count=1;
    [row,col]=size(M);
    for ii=1:row
        for jj=1:col
            if M(ii,jj)== max(M(ii,1:col)) && M(ii,jj)==min(M(1:row,jj))
            indices(count,1)=ii;
            indices(count,2)=jj; 
    count=count+1;
            end
        end
    end