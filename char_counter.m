function charnum = char_counter(fname,character)
file = fopen(fname,'rt');
if file>0 && ischar(character)
    file = fileread(fname);
    charnum=sum(file()==character);
else
    charnum=-1;
end
    
    