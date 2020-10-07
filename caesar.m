function coded = caesar(v,s)
cod=v+s;
for ii=1:length(cod)
    while cod(ii)>126
        cod(ii)=31+(cod(ii)-126);
    end
    while cod(ii)<32
        cod(ii)=127-(32-cod(ii));
    end
end
coded=char(cod);