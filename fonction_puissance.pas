function puissance(n,e:integer):LongInt;
var i,k:integer;
Begin
k:=1;
for i:=1 to e do
Begin
k:=n*k;
end;
puissance:=k;
end;