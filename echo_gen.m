function echo = echo_gen (in, fs, delay, amp)
fsdy=round(fs*delay); %calcula el número de elementos correspondientes al tiempo de delay
extt=zeros(fsdy,1); % hace un vector de ceros con el número calculado arriba (tiempo extra)
jecho=[extt;(in.*amp)]; % hace el vector correspondiente al echo amplificado poniendo el tiempo extra al principio
echo=([in;extt]+jecho); %genera el vector de el audio original con el tiempo extra al final + el vector correspondiente al eco

tooloud=max(abs(echo)); % saca el mayor valor del vector en terminos absolutos
if tooloud>1 % si sobre pasa 1 manda llamar al escalamiento
    echo=sclVec(echo,1,tooloud);
end

function scale=sclVec(echo,mass,tooloud) % (vector_a_scalar, maximo_valor_a_tomar, max_vector)
[row,col]=size(echo);
scale=zeros(row,col); %vector del tamaño adecuado para optimización
for ii=1:row
        scale(ii)=echo(ii)*(mass/tooloud); %scalado (pensar en relación de triangulos)   
end