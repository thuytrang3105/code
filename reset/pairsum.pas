var
  f:text;
  a:array[1..10000]of integer;
  n:integer;
  s:word;
procedure input;
        var i:integer;
        begin
                assign(f,'pairsum.inp');
                reset(f);
                read(f,n,s);
                for i:=1 to n do read(f,a[i]);
                close(f);
        end;
function d(x:integer):integer;
        var i,t:integer;
        begin
        t:=0;
        for i:=x to n do
           begin
             if a[x]+a[i]=s then begin inc(t); writeln(x,' ',i);end;
             if a[x]+a[i]>s then break;
           end;
        d:=t;
        end;
procedure output;
        var
           dem,i:integer;
        begin
           dem:=0;
           for i:=1 to n do
               dem:=dem+d(i);
           write(f,dem);
        end;
begin
        input;
        assign(f,'pairsum.out');
        rewrite(f);
           output;
        close(f);
end.