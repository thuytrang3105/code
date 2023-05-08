var
        n,i:byte;
        a:array[1..100]of string;
        ts:array[1..255]of byte;
        f:text;
procedure xl(x:string);
        var i:byte;
        begin   writeln(x);
                x:=upcase(x);
                for i:=1 to length(x) do
                      inc(ts[ord(x[i])]);
        end;
procedure output;
      var kq,i:byte;
      begin
      kq:=0;
          for i:=33 to 125 do
              if kq<ts[i] then kq:=ts[i];
          writeln(f,kq);
      end;
procedure input;
        var i:byte;
        begin
                assign(f,'ktts.inp');
                reset(f);
                readln(f,n);
                fillchar(ts,sizeof(ts),0);
                for i:=1 to n do
                            begin
                                readln(f,a[i]);
                                xl(a[i]);
                            end;
                close(f);
        end;
begin
        input;
        assign(f,'ktts.out');
        rewrite(f);
           output;
        close(f);
end.
