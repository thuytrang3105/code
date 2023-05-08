var
  f:text;
  n,i:byte;
function lt(x:byte):longint;
     var s:longint;
     i:byte;
     begin
     s:=1;
        for i:=1 to x do
            s:=s*x;
        lt:=s;
     end;
  begin
  assign(f,'ltlt.inp');
  reset(f);
  read(f,n);
  close(f);
  assign(f,'ltlt.out');
  rewrite(f);
    for i:=1 to n do
       if lt(i) mod n=0 then begin write(f,i); break; end;
  close(f);
end.