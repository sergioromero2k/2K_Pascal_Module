
Program SenzuDistributor;

Var 
  n: Integer;
Begin
  write('Total Senzu Beans: ');
  ReadLn(n);
  WriteLn('Warriors supplied: ', (n Div 6));
  WriteLn('Beans remaining in bag: ', (n Mod 6));
End.
