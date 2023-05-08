var
  m,n,dem:integer;
  a:array[1..100,1..100]of integer;
  f:text;
procedure input;
var i,j:integer;
begin
        assign(f,'vuoncay.inp');
        reset(f);
        read(f,n,m);
        for i:=1 to n do
             begin
                for j:=1 to m do
                        begin
                                read(f,a[i,j]);
                                if a[i,j]=1 then inc(dem);
                        end;
                readln(f);
             end;
        close(f);
end;
function max_doc(x:byte):integer;
   var i,j,t,max:integer;
   begin
      for j:=1 to m do
          begin
                t:=0;
                for i:=1 to n do
                   if a[i,j]=1 then inc(t) else 
                         if a[i+1,j]=0 then break;
                if t>max then max:=t;
          end;
   end;
procedure so_cay_lien_tuc;
        var  max:integer;
             i,j,t:integer;
        begin
             max:=max_doc(1);
             for i:=1 to n do
                begin
                        t:=0;
                        for j:=1 to m do
                                if a[i,j]=1 then inc(t) else
                                      if a[i,j+1]=0 then break;
                        if t>max then max:=t;
                end;
             write(f,max);
        end;
begin
        input;
        assign(f,'vuoncay.out');
        rewrite(f);
          writeln(f,dem);
          so_cay_lien_tuc ;
        close(f);
end.
