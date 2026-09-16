{$Q+,R+}

Program KiOverflow;

Var 
  ki: ShortInt;
Begin
  // Set the maximum value
  ki := 127;
  WriteLn('Current Ki capacity: ', ki);

  // Cause an integer overflow
  WriteLn('Charging 1 unit of Ki...');
  ki := ki + 1;

  // Display the result
  WriteLn('Scouter exploded! Current value: ', ki);
End.
