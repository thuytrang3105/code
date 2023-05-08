var
  n:integer;
  a:array[1..1000]of integer;
  i:integer;
  s,t:word;
  f:text;
procedure input;
  begin
        assign(f,'div.inp');
        reset(f);
        readln(f,n);
        for i:=1 to n do read(f,a[i]);
        close(f);
  end;
procedure tong;
  begin
    for i:=1 to n do
       s:=s+a[i];
  end;
function doan(x:word):integer;
   var
     t:word;
     dem,i:integer;
   begin
   t:=0; dem:=0;
     for i:=1 to n do
       begin
                t:=t+a[i];
                if t>x then break;
                if t=x then begin
                               t:=0;
                               inc(dem);
                            end;
       end;
       if t=0 then doan:=dem else doan:=0;
   end;
begin
   input;
   assign(f,'div.out');
   rewrite(f);
     tong;  t:=0;
     for i:=1 to n do
        begin
           t:=t+a[i] ;
           if doan(t)<>0 then
            begin
              write(f,doan(t));
              close(f);
              exit;
            end;
        end;
   close(f);
end.