program decalage_circulaire;
var n,nd,i,res,c:integer;
{$i fonction_puissance}
{$i fonction_nb_pos}
Begin
writeln('donnez n et le nombre de decalage');
readln(n,nd);
for i:=1 to nd do
Begin
c:=n div puissance(10,nb_pos(n)-1);
res:=(n-(c*puissance(10,nb_pos(n)-1)))*10+c ;
n:=res;
end;
writeln(n);
readln;
readln;
end.
