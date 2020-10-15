function distance = get_distance(c1,c2)
[~,~,every]=xlsread('Distances.xlsx');
row=find(strcmp(every,c1),1);
col=find(strcmp(every,c2),1);
if isempty(row) || isempty(col)
    distance=-1;
else
    distance=every{row,col};
end
