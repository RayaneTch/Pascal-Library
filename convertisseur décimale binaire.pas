program convertisseur_decimal_binaire;
Var a,b,c,p:LongInt;
Begin
write('Donnez le nombre décimal ');
read(a);
p:=1;
b:=0;
Repeat
c:=(a mod 2);
a:=(a div 2);
c:=p*c;
p:=p*10;
b:=b+c;
until a=0;
write('l''equivalent binaire de votre nombre est: ',b);
readln;
readln;
end.