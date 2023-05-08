var
f:text;
a:array[1..100000]of integer;
n,i,max,id,d:integer;
procedure input;
   begin
        assign(f,'doandd.inp');
        reset(f);
        readln(f,n);
        for i:=1 to n do read(f,a[i]);
        close(f);
   end;
function dem_1(x:integer):integer;
        var dem,i:integer;
        begin
        dem:=1;
           for i:=x to n-1 do
               if a[i]<a[i+1] then break else inc(dem);
           dem_1:=dem;
        end;
function dem_2(x:integer):integer;
        var dem,i:integer;
        begin
        dem:=1;
           for i:=x to n-1 do
               if a[i]>a[i+1] then break else inc(dem);
           dem_2:=dem;
        end;
begin
        input;
        assign(f,'doandd.out');
        rewrite(f);
        max:=1;

        for i:=1 to n-1 do
           begin
                if a[i]>a[i+1] then   d:=dem_1(i) else d:=dem_2(i);
                if d>max then
                        begin
                            max:=d;
                            id:=i;
                        end;
           end;
        write(f,id,' ',max);
        close(f);
end.

