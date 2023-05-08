var f:text;
    a:array[1..1000]of integer;
    n:integer;
procedure input;
        var i:integer;
        begin
                assign(f,'dctanglt.inp');
                reset(f);
                readln(f,n);
                for i:=1 to n do read(f,a[i]);
                close(f);
        end;
function dem(x:integer):integer;
        var d,i:integer;
        begin
                d:=1;
                for i:=x to n do
                        if a[i]<a[i+1] then inc(d) else break;
                dem :=d;
        end;
procedure output;
        var ts,i,id:integer;
        begin
                ts:=0;
                for i:=1 to n do
                   if ts<dem(i) then
                        begin
                                ts:=dem(i);
                                id:=i;
                        end;
                writeln(f,ts);
                for i:=id to id+ts-1 do write(f,i,' ');
        end;
begin
        input;
        assign(f,'dctanglt.out');
        rewrite(f);
                output;
        close(f);
end.
