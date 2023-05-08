var
   f:text;
   a:array[1..1000]of integer;
   n,i:integer;
   m:longint;
procedure input;
   begin
        assign(f,'daycon.inp');
        reset(f);
        readln(f,n,m);
        for i:=1 to n do read(f,a[i]);
        close(f);
  end;
procedure inkq(y,z:integer);
        var i:integer;
        begin
           for i:=y to z do
              write(f,a[i],' ');
        end;
procedure kt(x:integer);
        var
            i:integer;
            t:word;
        begin
           t:=0;
           for i:=x to n do
              begin
                t:=t+a[i];
                if t>m then break;
                if t=m then
                                begin
                                inkq(x,i);
                                writeln(f);
                                break;
                        end;
              end;
        end;



begin
  input;
  assign(f,'daycon.out');
  rewrite(f);
    for i:=1 to n do
       kt(i);
 close(f);
end.