Unit biblio1;
Interface
//-----------------les en-têtes des modules----------------------
function puissance(n,e:integer):LongInt;          //calculer n puissance e
function nb_pos(n:integer):integer;               //calculer le nombre de positions d'un chiffre
function nombre_diviseurs(n:integer):integer;     //calculer le nombre de diviseurs d'un nombre
function nbr_parfait(n:integer):boolean;          //vérifier si un nombre est parfait ou pas
function premier(n:integer):boolean ;             //vérifier si un nombre est premier ou pas
function extrchiff(n,p,nc:integer):integer;       //extraire nc chiffres à partir d'une position p d'un nombre n
Function facto(n:integer):integer;                //calculer le factorielle d'un nombre
Procedure chiff_pos(n,chiff_trv,rang:integer;var pos_chiff:integer);  //donner la position d'un chiffre avec le numéro de son occurence d'un nombre donné n
function occurence_chiff(n,chiff_trv:LongInt):integer; // calculer le nombre d'occurence d'un chiffre dans un nombre
Procedure change(n,chiff2,rang,chiff_trv:integer;var chiff1,pos_chiff,n2:integer);
function somm_chiff(n:integer):integer;            // calcule la somme des chiffres d'un nombre
Function diff_chiff(n:Integer):Boolean;
function pgcd(a,b:integer):integer;
Implementation
//----------------modules avec en-têtes et corps-----------------------
//******************(--1--)**********************
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
//******************(--2--)**********************
function nb_pos(n:integer):integer;
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
//******************(--3--)**********************
function nombre_diviseurs(n:integer):integer;
var nb_div,i:integer;
Begin
nb_div:=1;
for i:=1 to (n div 2) Do
Begin
if (n mod i)=0 then nb_div:=nb_div+1;
end;
nombre_diviseurs:=nb_div;
end;
//******************(--4--)**********************
function nbr_parfait(n:integer):boolean;
var i,s:integer;
Begin
For i:=1 to (n Div 2) Do
Begin
If (n mod i)=0 Then
s:=s+i;
End;
if s=n Then nbr_parfait:=true
else nbr_parfait:=false;
end;
//******************(--5--)**********************
function extrchiff(n,p,nc:integer):integer;
var chiff:integer;
Begin
chiff:=(n div puissance(10,p-1)) mod puissance(10,nc) ;
extrchiff:=chiff;
end;
//******************(--6--)**********************
Function premier(n:Integer):Boolean;
var i,somdiv:Integer;
Begin
somdiv:=1;
for i:=2 to (n div 2) Do
Begin
if (n mod i)=0 Then somdiv:=somdiv+i;
end;
if somdiv=1 then premier:=true
else premier:=false;
end;
//******************(--7--)**********************
Function facto(n:integer):integer;
var f,i:integer;
Begin
f:=1;
for i:=1 to n Do
f:=f*i;
facto:=f;
end;
//******************(--8--)**********************
Procedure chiff_pos(n,chiff_trv,rang:integer;var pos_chiff:integer);
var i,chiff,rang2:integer;
Begin
rang2:=0;
pos_chiff:=0;
for i:=1 to nb_pos(n) Do
Begin
chiff:=n mod 10;
n:=n div 10 ;
if chiff=chiff_trv then
Begin
rang2:=rang2+1;
if rang2=rang then
pos_chiff:=i;
end;
end;
end;
Procedure change(n,chiff2,rang,chiff_trv:integer;var chiff1,pos_chiff,n2:integer);
var i,chiff,rang2:integer;
Begin
rang2:=0;
pos_chiff:=0;
for i:=1 to nb_pos(n) Do
Begin
chiff:=n mod 10;
n:=n div 10 ;
if chiff=chiff_trv then
Begin
rang2:=rang2+1;
if rang2=rang then
pos_chiff:=i;
end;
end;
chiff1:=n div puissance(10,pos_chiff);
n2:=(n-chiff1*puissance(10,pos_chiff))+(chiff2*puissance(10,pos_chiff));
end;
//******************(--9--)**********************
function occurence_chiff(n,chiff_trv:LongInt):integer;
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

function somm_chiff(n:integer):integer;
var s,i,chiff:integer;
Begin
s:=0;
repeat
chiff:= n mod 10;
n:=n div 10;
s:=s+chiff;
until n=0;
somm_chiff:=s;
end;


Function diff_chiff(n:Integer):Boolean;
var i:LongInt;
Begin
i:=1;
while occurence_chiff(n,i)=1 Do
begin
i:=i+1;
end;
if i=10 then diff_chiff:=true
else diff_chiff:=false;
end;




function pgcd(a,b:integer):integer;
Begin
repeat
if a>b then a:=a-b
else b:=b-a;
until a=b;
pgcd:=a;
end;


end.