program minuman_nala;

uses crt;

var
    n,i:integer;
    harga:array[1..20] of integer;

begin
    clrscr;
    
    write('Banyak minuman : ');
    readln(n);

    if n < 1 then
        begin
            writeln('Tidak ada minuman yang tersedia');
            writeln;
            exit;
        end;
    
    for i:=1 to n do
        begin
            write('Minuman ke - ',i,': Rp.');
            readln(harga[i]);
        end;
    writeln;

    writeln('Minuman yang bisa dibeli Nala :');  
    for i:=1 to n do
        begin
            if harga[i] < 10000 then
                begin
                writeln('Minuman ke - ',i,': Rp.',harga[i]);
                end;
        end;
    writeln;
end.