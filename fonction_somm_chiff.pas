Procedure somm_chiff(chiff1,chiff2:integer;var r,ret_res,chiff3:integer);
Begin
r:=0;
ret_res:=0;
chiff3:=(chiff1+chiff2+r) mod 2;
ret_res:=(chiff1+chiff2+r) div 2 ;
r:=ret_res;
end; 