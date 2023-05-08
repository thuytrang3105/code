var
n,i:integer;
f:text;
a:array[1..10000]of integer;
procedure input;
        begin
            assign(f,'bddayso.inp');
            reset(f);
            readln(f,n);
            for i:=1 to n do read(f,a[i]);
            close(f);
        end;
procedure output;
        var
        chan,le:array[1..1000]of integer;
        dc,dl,i:integer;
        begin
         dc:=1;
         dl:=1;
          for i:=1 to n do
            if (i+a[i]) mod 2=1 then
               if a[i] mod 2=0 then
                   begin
                     chan[dc]:=i;
                     inc(dc);
                   end
               else begin
                       le[dl]:=i;
                       inc(dl) ;
                    end;
          if dc>1 then  begin
                writeln(f,dc-1);
                for i:=1 to dc-1 do
                        if chan[i]<le[i] then write(f,chan[i],' ',le[i],' ')
                                        else write(f,le[i],' ',chan[i],' '); end else write(f,-1);
        end;
begin
        input;
        assign(f,'bddayso.out');
        rewrite(f);
        output;
        close(f);
end.