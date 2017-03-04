PROGRAM CountReverse(INPUT, OUTPUT);
USES Count3;
{Программа для подсчета реверсов в строке символов.
Реверсом являются три последовательных символа, такие,
что средний символ больше или меньше крайних}
PROCEDURE BumpIfReverse(VAR Y1, Y2, Y3: CHAR);
BEGIN {BumpIfReverse}
  IF ((Y2 > Y3) AND (Y2 > Y1)) OR ((Y2 < Y3) AND (Y2 < Y1))
  THEN
    IF NOT EOLN
    THEN
      Count3.Bump
END; {BumpIfReverse}
PROCEDURE CheckReverse(VAR F1:TEXT);
VAR
  Ch1, Ch2, Ch3, X100, X10, X1, IsError: CHAR;
PROCEDURE MoveAndRead(VAR F1:TEXT);
BEGIN {MoveAndRead}
  Ch1 := Ch2;
  Ch2 := Ch3;
  READ(F1, Ch3);
  IF IsError = 'Y'
  THEN
    IsError := 'N'
END; {MoveAndRead}
BEGIN {CheckReverse}
  Count3.Start;
  IsError := 'Y';
  IF NOT EOLN(F1)
  THEN
    READ(F1, Ch1);
  IF NOT EOLN(F1)
  THEN
    READ(F1, Ch2);  
  WHILE NOT EOLN(F1)
  DO
    BEGIN
      MoveAndRead(F1);
      BumpIfReverse(Ch1, Ch2, Ch3)
    END;
  IF IsError = 'Y'
  THEN
    WRITELN('Enter at least 3 symbols');
  Count3.Value(X100, X10, X1);
  WRITELN('Count of reverses:', X100, X10, X1)
END; {CheckReverse}
BEGIN {CountReverse}
  CheckReverse(INPUT)
END. {CountReverse}
