var
 i,j,n,m:byte;
  f:text;
  a:array[1..10,1..10]of integer;
procedure input;
        begin
                assign(f,'ptyn.inp');
                reset(f);
                readln(f,n,m);
                for i:=1 to n do
                begin
                    for j:=1 to n do
                        read(f,a[i,j]);
                    readln(f);
                end;
                close(f);
        end;
function min(x:byte):byte;
        var i:byte;
        begin
        min:=1;
        for i:=1 to n do
            if a[x,min]>a[x,i] then min:=i;
        end;
function max(x,y:byte):boolean;
        var  i:byte;
        begin
        max:=true;
        for i:=1 to m do
           if a[x,y]<a[i,y] then
                begin
                        max:=false ;
                        {break;  }
                end;
        end;
begin
        input;
        assign(f,'ptyn.out');
        rewrite(f);
          for i:=1 to m do
             if max(i,min(i)) then
                 begin
                         write(f,i,' ',min(i));
                         close(f);
                         exit;
                 end;
          write(f,0);
        close(f);
end.
