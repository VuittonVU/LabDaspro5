program Soal_C;
uses crt;

var
    n,x,m:integer;
    energi_satu_kabel,energi:real;
    b:string;

begin
    clrscr;
    write('Apakah mendapatkan Buff : ');
    readln(b);
    write('Banyak kabel yang digunakan : ');
    readln(n);
    write('Energi yang dibutuhkan untuk 1 kabel : ');
    readln(x);
    write('Jumlah musuh yang terkena serangan : ');
    read(m);
    

    if b='True' then
    begin
        energi_satu_kabel:= n * x * 0.5;
        energi:= (energi_satu_kabel) + (m*15 - m*8);
        write('Total energi : ',energi:0:0);
    end
    else if b='False' then
    begin
        energi_satu_kabel:= n * x;
        energi:= (energi_satu_kabel) + (m*15 - m*8);
        write('Total energi : ',energi:0:0);
    end;
end.