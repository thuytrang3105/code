var
  f:text;
  m,n:integer;
  a,b,mt,mp:array[1..200]of integer;

procedure input;
    var i:integer;
    begin
        assign(f,'thamquan.inp');
        reset(f);
        readln(f,n,m);
        for i:=1 to n do
           begin
              read(f,a[i]);
              mp[i]:=a[i];
           end;
        readln(f);
        for i:=1 to m do
           begin
              read(f,b[i]);
              mt[i]:=b[i];
           end;
        close(f);
    end;
procedure sx_a;
        var
          i,j,t:integer;
        begin
          for i:=1 to n-1 do
             for j:=i+1 to n do
                if a[i]>a[j] then
                        begin
                           t:=a[i];
                           a[i]:=a[j];
                           a[j]:=t;
                        end;
        end;
procedure sx_b;
        var
          i,j,t:integer;
        begin
          for i:=1 to m-1 do
             for j:=i+1 to m do
                if b[i]>b[j] then
                        begin
                           t:=b[i];
                           b[i]:=b[j];
                           b[j]:=t;
                        end;
        end;
procedure tong_luong_xang_dau;
        var s:longint;
            i:integer;
        begin
            s:=0;
            for i:=1 to n do
               s:=s+b[i]*a[n-i+1];
            writeln(f,s);
        end;
procedure sx;
        var i,j,t:integer;
        begin
          for i:=1 to n do
            for j:=1 to n do
              if a[i]=mp[j] then
                    begin
                      t:=b[i];
                      b[i]:=b[j];
                      b[j]:=t;
                    end;
                    for i:=1 to n do writeln(b[i]);
          end;

procedure so_xe;
        var i,j:integer;
        begin
          sx;
          for i:=1 to n do
             for j:=1 to m do
                if b[i]=mt[j] then writeln(f,j);
        end;
begin
   input;
   assign(f,'thamquan.out');
   rewrite(f);
     sx_a;
     sx_b;
     tong_luong_xang_dau;
     so_xe;
   close(f);
end.