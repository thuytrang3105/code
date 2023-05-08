var
n,i:word;
a:array[1..1000]of integer;
f:text;
procedure input;
        begin
                assign(f,'subseq.inp');
                reset(f);
                readln(f,n);
                for i:=1 to n do read(f,a[i]);
                close(f);
        end;
procedure output;
        var
        id,jd,i,j:word;
        max,s:integer;
        begin
                max:=a[1];
                id:=0;
                jd:=0;
                for i:=1 to n do
                   begin
                   s:=0;
                     for j:=i to n do
                           begin
                                s:=s+a[j];
                                if s>max then
                                    begin
                                          id:=i;
                                          jd:=j;
                                          max:=s;
                                    end;
                           end;
                   end;
                write (f,id,' ',jd,' ',max);
        end;
begin
        input;
        assign(f,'subseq.out');
        rewrite(f);
            output;
        close(f);
end.