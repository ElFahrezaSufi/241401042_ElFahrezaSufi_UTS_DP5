program deret_fibonacci;

uses crt;

var
    n,i,a,b,c,total:integer;

begin
    clrscr;

    write('N = ');
    readln(n);
    writeln;

    if n < 1 then
        begin
            writeln('N tidak valid');
            exit;
        end;

    a:=0;
    total:=a;
    write('Sequence = ',a);

    b:=1;
    if n > 1 then
        begin
            write(', ',b);
            total:=total+b;
        end;

    for i:=3 to n do
        begin
            c:=a+b;
            write(', ',c);
            a:=b;
            b:=c;
            total:=total+c;
        end;
    writeln;

    writeln('Total = ',total);
    writeln;
end.