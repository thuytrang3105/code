var
  n,i:byte;
  a:array[1..100]of string;
  f:text;
procedure input;
        var x:integer;
        begin
                assign(f,'ketnoi.inp');
                reset(f);
                readln(f,n);
                for i:=1 to n do
                        begin
                                read(f,x);
                                str(x,a[i]);
                        end;
                close(f);
        end;
procedure sx;
  var
  i,j:byte;
  t:string;
  begin
     for i:=1 to n-1 do
        for j:=i+1 to n do
           if a[i]<a[j] then
                begin
                        t:=a[i];
                        a[i]:=a[j];
                        a[j]:=t;
                end;
  end;
begin
   input;
   assign(f,'ketnoi.out');
   rewrite(f);
   sx;
   for i:=1 to n do write(f,a[i]);
   close(f);
end.

