function out = blur (img,w)
% nos aseguramos que pic sea uint8
pic=uint8(img);
[row,col]=size(pic);
% crea una matriz de ceros del mismo tamaño de pic
out=zeros(row,col);
for rr = 1:row
    for cc = 1:col
        %extraemos matriz de los vecinos de la coordenada pic(rr,cc)
        m=extMat(pic,rr,cc,w,row,col);
        % sacamos el promedio de la matriz m y se indexa en out(rr,cc)
        out(rr,cc)=mean(m(:));
    end
end
%convertimos out en uint8 nuevamente
out=uint8(out);

% extMat debuelve una matriz m extraida de la matriz pic desde las
% coordenadas dadas
% toma valores en un radio=w de las coordenadas dadas junto con el valor de la cordenada dada
% mh representa el numero de columnas de pic
% mv número de filas de pic
% los argumentos que recoje son:
% (Matriz_original, coordenada_fila, coordenada_columna, w, mv, mh)
function m = extMat (M,rc,cc,w,mv,mh)
m =M(((rango(rc-w,mv)):(rango(rc+w,mv))),((rango(cc-w,mh)):(rango(cc+w,mh))));

%rango se asegura que los valores que se tomen de M no tomen coordenadas
%menores a la fila o columna 1 o mayores al tamaño de M
function [num]=rango(ori,mass)
if ori < 1, num=1;
elseif ori > mass, num=mass;
else, num=ori;   
end  