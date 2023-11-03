program Soal_b;
uses crt;

var
    n,i,bil,jumlah:integer;

begin
    clrscr;
    write('Masukkan batas bilangan : ');
    read(n);
    bil:=0;
    jumlah:=0;
    for i:= n downto 1 do
    begin
         if (i mod 2= 1) and (i mod 3= 0) then 
         begin
            write(i,' ');
            bil:= bil+1;
            jumlah:= jumlah+i;
        end;
    end;
    writeln;
    writeln('Banyak bilangan : ',bil);
    writeln('Jumlah deret : ',jumlah);
end.