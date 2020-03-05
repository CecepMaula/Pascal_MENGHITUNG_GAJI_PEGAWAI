program Menghitung_Gaji_bersih ;
 {I.S.:user memasukkan NIK, nama karyawan(Nama), golonagn(Gol), dan jumlah anak(JumAnak)}
 {F.S:menapilkan gaji pokok, tunjangan, tunjangan anak(TunAnak) dan gaji besih}
 uses crt;
 var
    NIK, Nama, Gol:string;
    JumAnak, GajiPokok:integer;
    BesarTunjangan, Tunjangan, TunAnak, GajiBersih:real;
begin
     textbackground(red); clrscr; textcolor(15);
     {memasukkan data karyawan}
     write('NIK                    : '); readln(NIK);
     write('Nama Karyawan          : '); readln(Nama);
     write('Golongan               : '); readln(Gol);
     write('Jumlah Anak            : '); readln(JumAnak);

     {inisialisasi gaji pokok dan besarnya tunjangan}
     GajiPokok     := 2500000;
     BesarTunjangan:= 0.05;

     {memeriksa golongan 'II' untuk gaji pokok dan besarnya tunjangan}
     if (Gol = 'II')
        then
        begin
             GajiPokok      := 2750000;
             BesarTunjangan := 0.075;
      end;

     {menghitung tunjangan}
     Tunjangan := BesarTunjangan * GajiPokok;

     {memeriksa jumlah anak, maksimal dua anak}
     if (JumAnak > 2)
        then
        JumAnak := 2;

     {menghitung tunjangan anak}
     TunAnak := JumAnak * (0.1 * GajiPokok);

     {menghitung gaji bersih}
     GajiBersih := GajiPokok + Tunjangan + TunAnak;

     {menampilkan gaji pokok, tunjangan, tunjangan anak dan gaji bersih}
     write('Gaji Pokok        : Rp. ');
     textcolor(15); writeln(GajiPokok);
     textcolor(15);
     write('Tunjangan        : Rp. ');
     textcolor(15); writeln(Tunjangan:0:2);
     textcolor(15);
     write('Tunjangan Anak     : Rp. ');
     textcolor(15); writeln(TunAnak:0:2);
     textcolor(15);
     write('Gaji Bersih        : Rp. ');
     textcolor(15); writeln(GajiBersih:0:2);
     textcolor(15);
     writeln;
     write('Sekian Dari Saya, Terimakasih, Tekan Enter Unutk Keluar Dari Program!!!!!');
     readln;




