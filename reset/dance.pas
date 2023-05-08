var
  f:text;
  s:integer;
  a:string ;
  n,i:byte;
procedure input;
        begin
            assign(f,'dance.inp');
            reset(f);
            readln(f,n);
            read(f,a);
            a:=upcase(a);
            close(f);
        end;
function kt(x,y:byte):boolean;
        var
        da,db,i:byte;
        begin
        da:=0;db:=0;
          for i:=x to y do
               if a[i]='A' then inc(da) else inc(db);
          if da=db then kt:=true else kt:=false;
        end;
function dem(x:byte):byte;
        var
        i,d:byte  ;
        begin
        d:=0;
          for i:=x+1 to n do
              if kt(x,i) then inc(d);
          dem:=d;
        end;
begin
        input;
        assign(f,'dance.out');
        rewrite(f);
           for i:=1 to length(a) do
                s:=s+dem(i);
           write(f,s);
        close(f);
end.
