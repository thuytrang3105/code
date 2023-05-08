var
   a:array[1..100]of integer;
   s:array[1..100]of string;
   n:integer;
   f:text;
procedure  input;
        begin
                assign(f,'maxstr.inp');
                reset(f);
                n:=0;
                while not seekeof(f) do
                begin
                     inc(n);
                     readln(f,s[n]);
                     a[n]:=length(s[n]);
                end;
                close(f);
        end;
procedure output;
        var
        max,id,i:integer;
        begin
          id:=1;
          for i:=1 to n do
               if a[i]>a[id] then  id:=i;
          write(f,s[id]);
        end;
begin
        input;
        assign(f,'maxstr.out');
        rewrite(f);
            output;
        close(f);
end.