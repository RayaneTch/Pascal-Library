Program code_gray;
Uses Wincrt,biblio1;
Var
  n,x,res,cmpt,pos_chiff: Longint;
Begin
WriteLn('donnez x');
Readln(x);
writeln('les codes binaires en code gray jusqu''a ',x,' sont:');
write(1,',');
cmpt := 0;
n := 1;
Repeat
If (occurence_chiff(n,1) Mod 2) =0 Then
Begin
If extrchiff(n,1,1)=1 Then
Begin
res := n-1;
Write(res,',');
End
Else
Begin
res := n+1;
Write(res,',');
End;
End
Else If (occurence_chiff(n,1) Mod 2)<>0 Then
Begin
chiff_pos(n,1,1,pos_chiff);
If (extrchiff(n,pos_chiff+1,1)=0) Then
Begin
res := n+puissance(10,pos_chiff);
Write(res,',');
End
Else If extrchiff(n,pos_chiff+1,1)=1 Then
Begin
res := n-puissance(10,pos_chiff);
Write(res,',');
End;
end;
cmpt := cmpt+1;
n := res;
Until cmpt=x;
End.