program tst2;
uses wincrt,biblio1;
var n,chiff_trv:integer;
function occurence_chiff(n,chiff_trv:integer):integer;
var i,cmpt,chiff:integer;
Begin
cmpt:=0;    
for i:=1 to nb_pos(n) do
begin
chiff:=n mod 10;
n:=n div 10;
if chiff=chiff_trv then cmpt:=cmpt+1;
occurence_chiff:=cmpt;
end;
end;
Begin
read(n,chiff_trv);
writeln(occurence_chiff(n,chiff_trv));
end.




