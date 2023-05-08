var
  f:text;
  sum,i,j,l,dem,n:integer;
  a:array[1..10000]of integer;
procedure input;
        begin
                assign(f,'equa.inp');
                reset(f);
                read(f,n);
                close(f);
        end;
function nt(x:integer):boolean;
    var
     i:integer;
    begin
    nt:=true;
    if x>=4 then
       for i:=2 to round(sqrt(x)) do
                if x mod i=0 then begin nt:=false ; break; end;
    end;
procedure xl;
    var
      i:integer;
    begin
       sum:=0;
       if n>2 then
                for i:=2 to n do
                   if nt(i) then
                       begin
                            inc(sum);
                            a[sum]:=i;
                        end;
    end;
begin
        input;
        assign(f,'equa.out');
        rewrite(f);
        xl;
        dem:=0;
           for i:=1 to sum do
                for j:=i to sum do
                    for l:=j to sum do
                       if a[i]+a[j]+a[l]=n then
                                begin
                                   inc(dem);
                                   writeln(f,a[i],' ',a[j],' ',a[l]);
                                end;
           write(f,dem);
        close(f);
end.