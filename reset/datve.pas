var
  f:text;
  a:array[1..400000]of byte;
  n,i,x,m:longint;
procedure input;
   begin
     fillchar(x,sizeof(x),0);
     assign(f,'datve.inp');
     reset(f);
     readln(f,n,m);
     for i:=1 to m do
        begin
                read(f,x);
                inc(a[x]);
        end;
     close(f);
   end;
begin
  input;
  assign(f,'datve.out');
  rewrite(f);
    for i:=1 to n do
      if a[i]=0 then write(f,i,' ');
  close(f);
end.
