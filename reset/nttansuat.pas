var
  f:text;
  a:array[1..1000000]of integer;
  n,i,ts,id:word;
procedure  input;
     begin
     assign(f,'nttansuat.inp');
     reset(f);
     readln(f,n);
     for i:=1 to n do
         read(f,a[i]);
     close(f);
     end;
function nt(x:integer):boolean;
        begin
            nt:=true;
            if x<2 then
                begin
                        nt:=false;
                        exit;
                end;
            if x>3 then
                begin
                  for i:=2 to  x-1  do
                    if x mod i =0 then
                        begin
                                nt:=false;
                                exit;
                        end;
        end;
     end;
function d(x:word):word;
        var dem:word;
            i:word;
         begin
           dem:=1  ;
                for i:=x+1 to n do
                        if a[i]=a[x] then inc(dem);
                d:=dem;
        end;
procedure xl;
        var
          i,t:word;
          b:array[1..10000]of integer;
        begin
            t:=0;
                for i:=1 to n do
                    if nt(a[i])=true then
                        begin
                            inc(t);
                            b[t]:=a[i];
                        end;
        n:=t;
        for i:=1 to n do a[i]:=b[i];
        for i:=1 to n do writeln(a[i]);
        end;
begin
    input;
    assign(f,'nttansuat.out');
    rewrite(f);
    xl;
        for i:=1 to n do
          if ts<=d(i) then
             begin
                ts:=d(i);
                id:=i;
             end;
        writeln(f,a[id],' ',ts);
    close(f);
end.

