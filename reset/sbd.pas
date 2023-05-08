var
        i,m,n:integer;
        a,b:array[1..1000]of integer;
        f:text;
procedure input;
        var
                i:integer;
        begin
                assign(f,'sbd.inp');
                reset(f);
                readln(f,n);
                for i:=1 to n do
                        read(f,a[i]);
                readln(f);
                readln(f,m);
                for i:=1 to m do
                        read(f,b[i]);
                close(f);
        end;
function kt(x:integer):integer;
        var
                i:integer;
                s:longint;
        begin
               s:=0;
                for i:=1 to n do
                   begin
                        s:=s+a[i];
                        if s>x then break;
                   end;
                kt:=i;
        end;
begin
        input;
        assign(f,'sbd.out');
        rewrite(f);
                for i:=1 to m do
                   writeln(f,kt(b[i]));
        close(f);
end.