function scale=sclvec(echo,mass)
[row,col]=size(echo);
scale=zeros(row,col);
tooloud=max(abs(echo));
for ii=1:row
        scale(ii)=echo(ii)*(mass/tooloud);    
end