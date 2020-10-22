% extMat debuelve una matriz [m] extraida de la matriz [M] desde las
% coordenadas dadas
% toma valores en un radio=w de las coordenadas dadas junto con el valor de la coordenada dada
% mh representa el numero de columnas de M
% mv número de filas de M
% los argumentos que recoje son:
% (Matriz_original, coordenada_fila, coordenada_columna, w, mv, mh)

function m = extMAt (M,rc,cc,w,mv,mh)
m =M(((rango(rc-w,mv)):(rango(rc+w,mv))),((rango(cc-w,mh)):(rango(cc+w,mh))));

%rango se asegura que los valores que se tomen de la matriz
%no tomen coordenadas menores a la fila o columna 1 o mayores al tamaño de pic
function [num]=rango(ori,mass)
if ori < 1, num=1;
elseif ori > mass, num=mass;
else, num=ori;   
end  