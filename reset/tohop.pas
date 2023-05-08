var
  n,p:byte;
  f:text;
function giaithua(x:byte):longint;
  begin
    if x>1 then giaithua:=giaithua*giaithua(x-1)
           else giaithua:=1;
  end;
begin
  assign(f,'tohop.inp');
  reset(f);
  read(f,n,p);
  close(f);
  assign(f,'tohop.out');
  rewrite(f);
     write(f,giaithua(n)/((giaithua(p)*giaithua(n-p))));
  close(f);
end.