Function nb_pos(n:integer):integer;
var i:integer;
Begin
i:=1;
while (n div 10)<>0 do
Begin
i:=i+1;
n:=(n div 10);
end;
nb_pos:=i;
end;
