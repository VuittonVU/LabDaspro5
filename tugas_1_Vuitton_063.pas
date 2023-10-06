program tugas_1_Vuitton_063;
uses crt , sysutils;

var
    nama,nim,stambuk,fakultas,prodi,jalur,kelas,no7,no8,no9: string;
    nomor_urut:integer;
begin
    clrscr;
    writeln('Nama : ');
    readln(nama);
    writeln('NIM : ');
    readln(nim);
    stambuk := nim[1] + nim[2];
    fakultas := nim[3] + nim[4];
    prodi := nim[5] + nim[6];
    nomor_urut := strToint(nim[7..9]);

    writeln('Nama : ',nama);
    writeln('Nim : ',nim);
    
    case (fakultas) of
    '01' :  begin writeln('Fakultas : Kedokteran');
                case (prodi) of
                '00' : writeln('Prodi : Pendidikan Dokter');
                end;
            end;

    '02' :  begin writeln('Fakultas : Hukum');
                case (prodi) of
                '00' : writeln('Prodi : Ilmu Hukum');
                end;
            end;

    '03' : begin writeln('Fakultas : Pertanian');
                case (prodi) of
                '01' : writeln('Prodi : Agroteknologi');
                '02' : writeln('Prodi : Manajemen Sumberdaya Perairan');
                '03' : writeln('Prodi : Agribisnis');
                '05' : writeln('Prodi : Teknologi Pangan');
                '06' : writeln('Prodi : Peternakan');
                '08' : writeln('Prodi : Teknik Pertanian dan Biosistem');
                '10' : writeln('Prodi : Agroteknologi (PSDKU) ');
                end;
            end;

    '04' : begin writeln('Fakultas : Teknik');
                case (prodi) of
                '01' : writeln('Prodi : Teknik Mesin');
                '02' : writeln('Prodi : Teknik Elektro');
                '03' : writeln('Prodi : Teknik Industri');
                '04' : writeln('Prodi : Teknik Sipil');
                '05' : writeln('Prodi : Teknik Kimia');
                '06' : writeln('Prodi : Arsitektur');
                '07' : writeln('Prodi : Teknik Lingkungan');
                '31' : writeln('Prodi : Pendidikan Profesi Insinyur');
                end;
            end;


    '05' : begin writeln('Fakultas : Ekonomi dan Bisnis');
                case (prodi) of
                '01' : writeln('Prodi : Ekonomi Pembangunan');
                '02' : writeln('Prodi : Manajemen');
                '03' : writeln('Prodi : Akuntansi');
                '04' : writeln('Prodi : Kewirausahaan');
                end;
            end;

    '06' : begin writeln('Fakultas : Kedokteran Gigi');
                case (prodi) of
                '00' : writeln('Prodi : Sarjana Kedokteran Gigi');
                '31' : writeln('Prodi : Profesi Kedokteran Gigi');
                end;
            end;

    '07' : begin writeln('Fakultas : Ilmu Budaya');
                case (prodi) of
                '01' : writeln('Prodi : Sastra Indonesia');
                '02' : writeln('Prodi : Sastra Melayu');
                '03' : writeln('Prodi : Sastra Batak');
                '04' : writeln('Prodi : Sastra Arab');
                '05' : writeln('Prodi : Sastra Inggris');
                '06' : writeln('Prodi : Ilmu Sejarah');
                '07' : writeln('Prodi : Etnomusikologi');
                '08' : writeln('Prodi : Sastra Jepang');
                '09' : writeln('Prodi : Perpustakaan dan Sains Informasi');
                '10' : writeln('Prodi : Bahasa Mandarin');
                end;
            end;

    '08' :begin writeln('Fakultas : Matematika dan Ilmu Pengetahuan');
                case (prodi) of
                '01' : writeln('Prodi : Fisika');
                '02' : writeln('Prodi : Kimia');
                '03' : writeln('Prodi : Matematika');
                '04' : writeln('Prodi : biologi');
                end;
            end;

    '09' : begin writeln('Fakultas : Ilmu Sosial dan Politik');
                case (prodi) of
                '01' : writeln('Prodi : Sosiologi');
                '02' : writeln('Prodi : Ilmu Kesejahteraan Sosial');
                '03' : writeln('Prodi : Ilmu Administrasi Publik');
                '04' : writeln('Prodi : Ilmu Komunikasi');
                '05' : writeln('Prodi : Antropologi Sosial');
                '06' : writeln('Prodi : Ilmu Politik');
                '07' : writeln('Prodi : Ilmu Administrasi Bisnis');
                end;
            end;

    '10' : begin writeln('Fakultas : Kesehatan Masyarkat');
                case (prodi) of
                '00' : writeln('Prodi : Kesehatan Masyrakat');
                '01' : writeln('Prodi : Gizi');
                end;
            end;

    '11' : begin writeln('Fakultas : Keperawatan');
                case (prodi) of
                '01' : writeln('Prodi : Sarjana Keperawatan');
                '02' : writeln('Prodi : Profesi Ners');
                end;
            end;

    '12' : begin writeln('Fakultas : Kehutanan');
                case (prodi) of
                '01' : writeln('Prodi : Kehutanan');
                end;
            end;

    '13' : begin writeln('Fakultas : Psikologi');
                case (prodi) of
                '01' : writeln('Prodi : Psikologi');
                end;
            end;

    '14' : begin writeln('Fakultas : Ilmu Komputer dan Teknologi Informasi');
                case (prodi) of
                '01' : writeln('Prodi : Ilmu Komputer');
                '02' : writeln('Prodi : Teknologi Informasi');
                end;
                
                if (nomor_urut <31) then 
                    begin
                        jalur := 'SNBP';
                        writeln('Jalur : ',jalur);
                    end
                else if (nomor_urut <71) then 
                    begin
                        jalur := 'SNBT';
                        writeln('Jalur : ',jalur);
                    end
                else begin
                        jalur := 'SMM';
                        writeln('Jalur : ',jalur);
                    end;


                 if (nomor_urut mod 3 = 1) then 
                    begin 
                        kelas:= 'A';
                        writeln('Kelas : ',kelas);
                    end
                else if (nomor_urut mod 3 = 2) then
                    begin 
                        kelas:= 'B';
                        writeln('Kelas : ',kelas);
                    end
                else if (nomor_urut mod 3 = 0) then
                    begin 
                        kelas:= 'C';
                        writeln('Kelas : ',kelas);
                    end;
            end;

    '15' : begin writeln('Fakultas : Farmasi');
                case (prodi) of
                '01' : writeln('Prodi : Farmasi');
                end;
            end;
    end;


end.