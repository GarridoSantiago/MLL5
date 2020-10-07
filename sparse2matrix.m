function matrix = sparse2matrix (cell)
matrix = ones(cell{1})*cell{2};
for ii = 3:length(cell)
    matrix(cell{ii}(1),cell{ii}(2))=cell{ii}(3);
end