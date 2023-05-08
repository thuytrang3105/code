var
  n:word;
  f:text;
procedure input;
  begin
     assign(f,'phantich.inp');
     reset(f);
     read(f,n);
     close(f);
  end;
procedure pt;
        var
          i:integer;
          dem:integer;
        begin
           i:=2;
           while n>1 do
             begin
             dem:=0;
               while n mod i=0 do
                  begin
                        inc(dem);
                        n:=n div i;
                  end;
               inc(i);
               if dem<>0 then writeln(f,i,' ',dem);
             end;
        end;

begin
        input;
        assign(f,'phantich.out');
        rewrite(f);
        pt;
        close(f);
end.
