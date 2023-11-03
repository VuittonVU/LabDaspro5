program Soal_A;
uses crt;

var
    tinggi,diameter,r,luas,volume:real;

CONST
    phi=3.1416;

begin
    clrscr;
    write('Masukkan nilai diameter alas (dalam cm) : ');
    read(diameter);
    write('Masukkan nilai tinggi (dalam cm) : ');
    read(tinggi);

    r:= 0.5 * diameter;
    luas:= 2 * phi * r * (r + tinggi);
    volume := phi * r * r * tinggi;

    writeln('Volume tabung : ',volume:0:3,' cm^3');
    writeln('Luas permukaan tabung : ',luas:0:3,' cm^2');
end.