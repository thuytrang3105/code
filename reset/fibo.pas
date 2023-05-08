var
  n:byte;
  s:string;
  f:text;
function fibo(x:byte):string;
        var
        g:array[0..100]of string;
        i:byte;
        begin
                g[0]:='a';
                g[1]:='b';
                for i:=2 to n do
                   g[i]:=g[i-1]+g[i-2];
                fibo:=g[x];
        end;
procedure xl;
        var
        t:string;
        i,dem:byte;
        begin
        dem:=0;
           t:=fibo(n);
           for i:=1 to length(t) do
              if copy(t,i,length(s))=s then inc(dem);
           write(f,dem);
        end;
begin
   assign(f,'fibo.inp');
   reset(f);
   readln(f,n);
   read(f,s);
   close(f);
   assign(f,'fibo.out');
   rewrite(f);
   xl;
   close(f);
end.

