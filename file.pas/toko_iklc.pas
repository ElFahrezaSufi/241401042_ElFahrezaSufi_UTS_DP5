program toko_iklc;

uses crt;

var
    kembalian,jumlah,lembaran:longint;

begin
    clrscr;
    
    write('Masukkan jumlah kembalian : Rp.');
    readln(kembalian);
    writeln;

    jumlah:=0;
    while kembalian > 0 do
        begin
            if kembalian >= 100000 then
                begin
                    lembaran:=kembalian div 100000;
                    jumlah:=jumlah + lembaran;
                    kembalian:=kembalian mod 100000;
                end
            else if kembalian >= 75000 then
                begin
                    lembaran:=kembalian div 75000;
                    jumlah:=jumlah + lembaran;
                    kembalian:=kembalian mod 75000;
                end
            else if kembalian >= 50000 then
                begin
                    lembaran:=kembalian div 50000;
                    jumlah:=jumlah + lembaran;
                    kembalian:=kembalian mod 50000;
                end
            else if kembalian >= 20000 then
                begin
                    lembaran:=kembalian div 20000;
                    jumlah:=jumlah + lembaran;
                    kembalian:=kembalian mod 20000;
                end
            else if kembalian >= 10000 then
                begin
                    lembaran:=kembalian div 10000;
                    jumlah:=jumlah + lembaran;
                    kembalian:=kembalian mod 10000;
                end
            else if kembalian >= 5000 then
                begin
                    lembaran:=kembalian div 5000;
                    jumlah:=jumlah + lembaran;
                    kembalian:=kembalian mod 5000;
                end
            else if kembalian >= 2000 then
                begin
                    lembaran:=kembalian div 2000;
                    jumlah:=jumlah + lembaran;
                    kembalian:=kembalian mod 2000;
                end
            else if kembalian >= 1000 then
                begin
                    lembaran:=kembalian div 1000;
                    jumlah:=jumlah + lembaran;
                    kembalian:=kembalian mod 1000;
                end
            else if kembalian >= 500 then
                begin
                    lembaran:=kembalian div 500;
                    jumlah:=jumlah + lembaran;
                    kembalian:=kembalian mod 500;
                end
            else if kembalian >= 200 then
                begin
                    lembaran:=kembalian div 200;
                    jumlah:=jumlah + lembaran;
                    kembalian:=kembalian mod 200;
                end
            else if kembalian >= 100 then
                begin
                    lembaran:=kembalian div 100;
                    jumlah:=jumlah + lembaran;
                    kembalian:=kembalian mod 100;
                end;
        end;

    writeln('Jumlah lembaran kembalian adalah ',jumlah);
    writeln;
end.