var
  f:text;
  n,i,t,id:integer;
  a:array[1..5001]of word;
procedure input;
   begin
        assign(f,'dcchiahet.inp');
        reset(f);
        readln(f,n);
        for i:=1 to n do read(f,a[i]);
        close(f);
   end;
function dc(x:integer):integer;
    var
      t:word;
      d,i:integer;
    begin
       t:=a[x];
       d:=1;
        for i:=x+1 to n do
          if a[i] mod t=0 then
                        begin
                                t:=a[i];
                                inc(d);
                        end;
        dc:=d;
    end;
procedure inkq;
    var
      t:word;
    begin
       t:=a[id];
        for i:=id to n do
          if a[i] mod t=0 then
                        begin
                                t:=a[i];
                                write(f,a[i],' ');
                        end;
    end;
begin
  input;
  assign(f,'dcchiahet.out');
  rewrite(f);
    t:=1;
    for i:=1 to n-1 do
      if dc(i)>t then
          begin
            t:=dc(i);
            id:=i;
          end;
    writeln(f,t);
    inkq;
  close(f);
end.
