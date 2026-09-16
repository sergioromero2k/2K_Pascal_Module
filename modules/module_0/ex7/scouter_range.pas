
Program ScouterRange;

Const 
  MIN_KI = 500;
  MAX_KI = 8500;

Var 
  ki: Integer;
  yes: Boolean;
Begin
    { Check if the warrior Ki is within the measurable range }
  Write('Enter target Ki: ');
  ReadLn(ki);
  yes := (ki >= MIN_KI) And (ki <= MAX_KI);
  WriteLn('Target in scouter range: ', yes);
End.
