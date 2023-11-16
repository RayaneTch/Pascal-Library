Function premier(n:Integer):Boolean;
var i,somdiv:Integer; 
Begin
somdiv:=1;
for i:=2 to (n div 2) Do
Begin
if (n mod i)=0 Then somdiv:=somdiv+i;
end;
if somdiv=1 then premier:=true
else premier:=false   ;
end;