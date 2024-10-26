program kasir_supermarket;

uses crt;

var
    harga,jumlah,belanja,diskon,total:real;
    i,jenis,produk,poin:integer;
    member,anggota,pembeli,hari,nama:string;

begin
    clrscr;
    
    writeln('Apakah kamu seorang member? (Ya/Tidak)');
    write('Jawab : ');
    readln(member);
    writeln;

    if member = 'Ya' then
        begin
            write('Masukkan nama anggota : ');
            readln(anggota);
            diskon:=0.10;
        end
    else
        begin
            write('Masukkan nama pembeli : ');
            readln(pembeli);
            diskon:=0;
        end;

    write('Masukkan hari : ');
    readln(hari);
    writeln;

    writeln('Ada 4 kategori dan 8 jenis produk yang tersedia di toko ini :');
    writeln('Kategori Hygiene : Sabun, Pasta gigi.');
    writeln('Kategori Frozen Food : Sosis beku, Sayuran beku.');
    writeln('Kategori Elektronik : Lampu, Blender.');
    writeln('Kategori Laktosa : Es krim, Susu kotak.');
    writeln;

    write('Masukkan jumlah jenis produk yang ingin dibeli : ');
    readln(jenis);
    writeln;
    
    belanja:=0;
    for i:=1 to jenis do
        begin
            write('Masukkan nama produk ke - ',i,': ');
            readln(nama);

            case nama of
            'Sabun':harga:=16000;
            'Pasta gigi':harga:=7000;
            'Sosis beku':harga:=18000;
            'Sayuran beku':harga:=25000;
            'Lampu':harga:=30000;
            'Blender':harga:=50000;
            'Es krim':harga:=20000;
            'Susu kotak':harga:=10000;
            else
            writeln('Produk tidak valid, silahkan coba lagi.');
            exit;
            end;

            if hari = 'Senin' then
                begin
                    case nama of
                    'Sabun':harga:=16000-(16000*0.10);
                    'Pasta gigi':harga:=7000-(7000*0.10);
                    end;
                end
            else if hari = 'Selasa' then
                begin
                    case nama of
                    'Sosis beku':harga:=18000-(18000*0.05);
                    'Sayuran beku':harga:=25000-(25000*0.05);
                    end;
                end
            else if hari = 'Rabu' then
                begin
                    case nama of
                    'Lampu':harga:=30000-(30000*0.30);
                    'Blender':harga:=50000-(50000*0.30);
                    end;
                end
            else if hari = 'Kamis' then
                begin
                    case nama of
                    'Es krim':harga:=20000-(20000*0.08);
                    'Susu kotak':harga:=10000-(10000*0.08);
                    end;
                end;

            write('Masukkan jumlah produk ',nama,' yang akan dibeli : ');
            readln(produk);
            writeln;

            if produk >= 10 then
                begin
                    diskon:=diskon+0.05;
                end;

            jumlah:=harga*produk;
            belanja:=belanja+jumlah;
        end;

    poin:=trunc(belanja/50000);
    if poin >= 50 then
        begin
            diskon:=diskon+0.20;
        end;

    writeln('Total belanja : Rp.',belanja:0:2);
    writeln('Total diskon : ',diskon*100:0:2,'%');

    diskon:=diskon*belanja;
    total:=belanja-diskon;
    writeln('Total pembayaran : Rp.',total:0:2);
    writeln('Total poin : ',poin);
    writeln;
end.