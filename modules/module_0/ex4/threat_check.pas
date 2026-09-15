
Program ThreatCheck;

Var 
  ki: Integer;
  result: Boolean;
Begin
  Write('Enemy Ki: ');
  ReadLn(ki);
  result := ki > 9000;
  WriteLn('It is over 9000: ', result);
End.
