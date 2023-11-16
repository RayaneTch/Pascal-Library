program factorielle;
Function facto(n:integer):integer;
var f,i:integer;
Begin
f:=1;
for i:=1 to n Do
f:=f*i;
facto:=f;
end;
var n:integer;
Begin
write('donnez n');
read(n);
write(facto(n));
readln;
readln;
end.