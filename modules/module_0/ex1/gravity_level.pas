
Program GravityLevel;

Const 
  MAX_GRAVITY: Integer = 400;

Var 
  n, result:  Integer;
Begin
    { Calculate the gravity level remaining }
  Write('Current gravity (G): ');
  result := 10;
  ReadLn(n);
  result := MAX_GRAVITY - n;
  WriteLn('System: You need ', result, 'G more to reach maximum training level!'
  );
End.
