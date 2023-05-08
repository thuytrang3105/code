var
   f:text;
   n,i:integer;
   a:array[1..10000]of integer;
procedure input;
        begin
            assign(f,'number.inp');
            reset(f);
            readln(f,n);
            for i:=1 to n do readln(f,a[i]);
            close(f);
        end;
procedure boi(x:integer);
         var t:qword;
             dem:byte;
         begin
           dem:=1;
           t:=1;
           while t mod a[i]<>0 do
             begin
                inc(dem);
                t:=t*10+1;
             end;
           writeln(f,dem);
         end;
begin
        input;
        assign(f,'number.out');
        rewrite(f);
           for i:=1 to n do
                boi(a[i]);
        close(f);
end.
