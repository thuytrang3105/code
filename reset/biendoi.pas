var
  f:text;
  n,dem,i:integer;
procedure input;
    begin
        assign(f,'biendoi.inp');
        reset(f);
        read(f,n);
        close(f);
    end;
function max(x:integer):integer;
   var
     s:string;
     t:char;
     i,j,c:byte;
   begin
     str(x,s);
     for i:=1 to 3 do
        for j:=i+1 to 4 do
           if s[i]<s[j] then
              begin
                 t:=s[i];
                 s[i]:=s[j];
                 s[j]:=t;
              end;
        val(s,max,c);
   end;
function min(x:integer):integer;
  var
   s,t:string;
   i,c:byte;
  begin
    t:='';
    str(max(x),s);
      for i:=4 downto 1 do
        t:=t+s[i];
    val(t,min,c);
  end;
begin
        input;
        assign(f,'biendoi.out');
        rewrite(f);
                while n<>6174 do
                    begin writeln(n);
                       n:=max(n)-min(n);
                       inc(dem);
                    end;
        write(f,dem);
        close(f);
end.

