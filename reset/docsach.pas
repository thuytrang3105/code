var
        n,k,i,kq:integer;
        f:text;
        a:array[1..10000]of integer;
procedure input;
     begin
        assign(f,'docsach.inp');
        reset(f);
        readln(f,n,k);
        for i:=1 to n do
            read(f,a[i]);
        close(f);
     end;
function dem(x:integer):integer;
        var i,s,d:integer;
        begin
        d:=0;
        s:=0;
        for i:=x to n do
           begin
                s:=s+a[i];
                if s>k then break;
                inc(d);    writeln('*',a[i]);
           end;
        dem:=d;
        end;
begin
        input;
        assign(f,'docsach.out');
        rewrite(f);
        for i:=1 to n do
             if dem(i)>kq then  kq:=dem(i);
        write(f,kq);
        close(f);
end.
