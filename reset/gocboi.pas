var n:word;
    f:text;
procedure xl;
    var s:longint;
    begin
       while n>10 do
           begin
                while n>10 do
                        begin
                                s:=s*10+n mod 10  ;
                                n:=n div 10 ;
                        end;
                n:=s;
           end;
           write(f,n);
    end;
begin
        assign(f,'gocboi.inp');
        reset(f);
        readln(f,n);
        close(f);
        assign(f,'gocboi.out');
        rewrite(f);
                xl;
        close(f);
end.