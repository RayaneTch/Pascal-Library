unit biblio2;
Interface
const max=100;
l=100;
c=100;
mx=50;
m=50;
n=50;
type
TindL=1..l;
TindC=1..c;
Tind=1..max;
tab1d=array [Tind] of integer;
TSTRING1D=Array[Tind] of string;
tab2d=array[TindL,TindC] of integer;
tab1d2=array[1..max]of char;
tabch=array[1..m,1..n]of string ;
var T,T2:tab2d;      s,nl,nc:integer;
procedure LECT1D(var T:tab1d; var tai:integer);   // fait la lecture d'un tableau
procedure  ECRIRETB(var T:tab1d ;var  tai:integer);        // fait l'écriture des éléments d'un tableau
procedure lect2d(var T:tab2d; nl:integer;nc:integer);  // fait la lecture d'une matrice
procedure ecriret2d(T:tab2d;nl:integer;nc:integer);     // fait l'écriture des éléments d'une matrice
procedure infc2(T:tab2d; var c,min,lm,nl:integer); // elle donne le minimum d'une colonne et la ligne du minimum(lm)
function infc(T:tab2d;c:integer):integer; // elle donne seulement le minimum d'une colonne
Function supl(T:tab2d;l,nc:integer):integer;      // elle donne le maximum d'une ligne
procedure supl2(T:tab2d;var l:integer ; var max:integer;var cm:integer);   // elle donne le maximum de la ligne et la colonne du maximum(cm)
procedure point_selle(T:tab2d;var nl,nc:integer);            // cherche le point de selle d'un tableau à deux dimensions
procedure LECT1DS(var T:tab1d2; var tai:integer);       //lire les éléments d'un tableau 1d de caractères
procedure ECRIRETBS(var T:tab1d2 ; tai:integer);        //écrire les éléments d'un tableau 1d de caractères
procedure ecriretbchaine(tch:tabch; nl,nc:Integer);     // écrire les éléments d'un tableau 2d de chaine de caractères
Procedure ecriretchaine(tstr:TSTRING1D; tai:integer);     // écrire les éléments d'un tableau 1d de chaine de caractères
function App_sch_ch(ch,sch:string):integer;               // calcule le nombre d'apparitions d'une sous_chaîne dans une chaine de caractères
procedure tri_cmpt_3tb(var T1 :tab1d;tai:integer; var T2:tab1d ;var T3:tab1d);         // tri par comptage à 3 tableaux
procedure tri_bll(var T :tab1d;tai:integer);             // tri par bulles
Function indDuMin (T: tab1D; B1, B2: Tind): Tind;       //donne l'indice du plus petit élément dans une portion
Procedure TRISEL (Var T : tab1d; Tai: Tind);           //trie les éléments de T par ordre croissant
Procedure PERMUT (Var A, B: Longint);                 //permute les contenus de A et B
PROCEDURE SomCol (T: Tab2D ; NbL: TindL; NbC: TindC; VAR SCOL : Tab1D);     // ranger la somme des colonnes d'un tableau2d dans un tableau1d
Function PALIND (Ph:String) : Boolean;                                    // vérifire si une chaîne de carctères est un palindrome ou non
procedure ranger_mot( var PH:string; var T2mots:TSTRING1D); 





Implementation
                                                        {-----------------------1-------------------------}
procedure LECT1D(var T:tab1d; var tai:integer);
var i:integer;
Begin
write('ecrire la taille du tableau : ');
readln(tai);
for i:=1 to tai do
Begin
write('T[',i,']= ');
readln(T[i]);
end;
end;
                                                        {----------------------2-------------------------}
procedure ECRIRETB(var T:tab1d ;var tai:integer);
var i:integer;
Begin
for i:=1 to tai do
Begin
write(T[i],'|');
end;
end;
                                                        {----------------------3-------------------------}
procedure lect2d(var T:tab2d; nl:integer;nc:integer);
var i,j :integer;
Begin
writeln('donnez le nombre de lignes');
readln(nl);
writeln('donnez le nombre de colonnes');
readln(nc);
for i:=1 to nl do
Begin
for j:=1 to nc do
Begin
write('T[',i,',',j,'] = ');
read(T[i,j]);
end;
end;
end;
                                                       {----------------------4-------------------------}
procedure ecriret2d(T:tab2d;nl:integer;nc:integer);
var i,j:integer;
Begin
for i:=1 to nl do
begin
writeln;
for j:=1 to nc do
begin
write(T[i,j],'|');
end;
end;
end;

	                                                    {----------------------5-------------------------}
procedure infc2(T:tab2d; var c,min,lm,nl:integer);
var i:integer;
Begin
min:=T[1,c];
lm:=1;
for i:=2 to nl do
Begin
if T[i,c]<min then
Begin
min:=T[i,c];
lm:=i;
end;
end;
end;
																					            {----------------------6-------------------------}

function infc(T:tab2d; c:integer):integer;
var i,min:integer;
Begin
min:=T[1,c];
for i:=2 to nl do
Begin
if T[i,c]<min then min:=T[i,c];
end;
infc:=min;
end;

																									    {----------------------7-------------------------}

Function supl(T:tab2d;l,nc:integer):integer;
var j,max:integer;
Begin
max:=0;
for j:=1 to nc do
Begin
if T[l,j]>max Then max:=T[l,j];
end;
supl:=max;
end;

																								     {----------------------8-------------------------}
procedure supl2(T:tab2d;var l:integer ; var max:integer;var cm:integer);
var j:integer;
Begin
max:=T[l,1];
cm:=1;
for j:=2 to nc do
Begin
if T[l,j]>max Then
Begin
max:=T[l,j];
cm:=j;
end;
end;
end;
																										 {----------------------9-------------------------}

procedure point_selle(T:tab2d;var nl,nc:integer);
var c,min,lm,cmpt:integer;
begin
cmpt:=0;
for c:=1 to nc Do
Begin
infc2(T,c,min,lm,nl);
if (supl(T,lm,nc)=min) then
Begin
cmpt:=cmpt+1;
write(min,',');
end;
end;
if cmpt=0 then writeln('il n ya pas de point de selle');
end;
																									    {----------------------10-------------------------}

procedure LECT1DS(var T:tab1d2;var tai:integer);
var i:integer;
Begin
write('ecrire la taille du tableau : ');
readln(tai);
for i:=1 to tai do
Begin
write('T[',i,']= ');
readln(T[i]);
end;
end;

																					            {----------------------11-------------------------}



procedure ECRIRETBS(var T:tab1d2 ; tai:integer);
var i:integer;
Begin
for i:=1 to tai do
Begin
write(T[i]);
end;
end;

procedure ecriretbchaine( tch:tabch; nl,nc:Integer);
var i,j:integer;
Begin
for i:=1 to nl do
Begin
writeln;
for j:=1 to nc Do
Begin
write(tch[i,j],'|');
end;
end;
end;
																									    {----------------------12-------------------------}



Procedure ecriretchaine(tstr:TSTRING1D;tai:Integer);
var i:integer;
Begin
for i:=1 to tai do
Begin
write(tstr[i],'|');
end;
end;

																				          		 {----------------------13-------------------------}


function App_sch_ch(ch,sch:string):integer;
var i,j,k,cmpt:integer;
Begin
cmpt:=0;
i:=1;
Repeat
if ch[i]=sch[1] Then
Begin
k:=1;
j:=i;
while (ch[j]=sch[k]) and (k<=Length(sch)) do
Begin
j:=j+1;
k:=k+1;
end;
if j-i=Length(sch) then
Begin
cmpt:=cmpt+1;
end;
i:=j;
end
Else
i:=i+1;
until i=Length(ch)+1;
App_sch_ch:=cmpt;
end;

                                                     {----------------------14-------------------------}


procedure tri_cmpt_3tb(var T1 :tab1d;tai:integer; var T2:tab1d ;var T3:tab1d);
var s,i,j:integer;
Begin
for i:=1 to tai do
Begin
s:=0;
T2[i]:=0;
for j:=1 to tai  do
Begin
if T1[j]< T1[i] then
Begin
T2[i]:=T2[i]+1;
end;
end;
T3[T2[i]+1]:=T1[i];
for j:=1 to tai do
Begin
if (T1[j]=T1[i]) and (i<>j) Then
Begin
s:=s+1;
T3[T2[i]+s+1]:=T1[i];
end;
end;
end;
end;

																				           {----------------------15-------------------------}

procedure tri_bll(var T :tab1d;tai:integer);
var i,s:integer;   permut:boolean;
Begin
repeat
permut:=false;
for i:=1 to tai-1 do
Begin
if T[i] > T[i+1] then
Begin
s:=T[i+1];
T[i+1]:=T[i];
T[i]:=s;
permut:=true;
end;
end;
until permut=false;
end;                                               {----------------------16-------------------------}


Procedure PERMUT (Var A, B: Longint);
//permute les contenus de A et B
Var Tmp: Longint;
Begin
Tmp := A;
A := B;
B := Tmp;
End; 
																							    {----------------------17-------------------------}

Function indDuMin (T: tab1D; B1, B2: Tind): Tind;
Var Ind, i: integer;
Begin
Ind := B1;
For i := (B1+1) To B2 Do
Begin
If T[i] < T[Ind] Then Ind := i;
End;
indDuMin := Ind;
End; 
																								 {----------------------18-------------------------}


Procedure TRISEL (Var T : tab1d; Tai: Tind);
Var i, Indice : integer;
Begin
For i := 1 To (Tai -1) Do
Begin
Indice := IndDuMin (T, i, Tai);
PERMUT (T[i], T[Indice]);
End;
End;


																									{----------------------19-------------------------}

PROCEDURE SomCol (T: Tab2D ; NbL: TindL; NbC: TindC; VAR SCOL : Tab1D);
Var i,j,SomC:Integer;
Begin
For j:=1 to NbC do
Begin
SomC:=0 ;
for i:=1 to NbL do
Begin
SomC:=SomC + T[i,j]
end;
SCOl[j]:=SomC
end;
end;




Function PALIND (Ph:String) : Boolean;
Var Ch1,Ch2 :string ;
i:integer;
Begin
Ch1:='';
Ch2:='';
for i:=1 to Length(Ph) Do
If (ORD (Upcase (Ph[i])) >= 65) And (ORD (Upcase (Ph[i])) <= 90) Then
Begin
Ch1:=Ch1+ Upcase (Ph[i]) ;
writeln(CH1);
Ch2:=Upcase (Ph[i]) + Ch2 ;
writeln(CH2);
end;
if (Ch1 = Ch2) Then
PALIND:=true
else PALIND:=False;
end;






procedure ranger_mot( var PH:string; var T2mots:TSTRING1D);
var i,k,j:integer;
Begin
k:=1;
j:=1;
for i:=1 to length(PH)+1 do
Begin
PH[i]:=Upcase(PH[i]);
If (ord(PH[i])>=65) And (ord(PH[i])<=90) Then
else
Begin
T2mots[k]:=copy(PH,j,i-j+1);
k:=k+1;
j:=i+1;
end;
end;
end;



end.