PROGRAM TestReadDigit(INPUT, OUTPUT);
VAR
  Sum: INTEGER;
FUNCTION ReadDigit(VAR F: TEXT): INTEGER;
VAR
  Ch: CHAR;
  Digit: INTEGER;
BEGIN {ReadDigit}
  Digit := -1;
  IF NOT EOLN(F)
  THEN
    BEGIN
      READ(F, Ch);
      IF Ch = '0' THEN Digit := 0 ELSE
      IF Ch = '1' THEN Digit := 1 ELSE
      IF Ch = '2' THEN Digit := 2 ELSE
      IF Ch = '3' THEN Digit := 3 ELSE
      IF Ch = '4' THEN Digit := 4 ELSE
      IF Ch = '5' THEN Digit := 5 ELSE
      IF Ch = '6' THEN Digit := 6 ELSE
      IF Ch = '7' THEN Digit := 7 ELSE
      IF Ch = '8' THEN Digit := 8 ELSE
      IF Ch = '9' THEN Digit := 9 
    END;
  ReadDigit := Digit
END; {ReadDigit}
FUNCTION ReadNumber(VAR F: TEXT; Base: INTEGER): INTEGER;
VAR
  Res, Val: INTEGER;
BEGIN {ReadNumber}
  Res := 0;
  Val := 0;
  WHILE (Val >= 0)
  DO
    BEGIN
      IF (((MAXINT - Val) DIV Base) >= Res)
      THEN
        BEGIN
          Res := Res * Base + Val;
          Val := ReadDigit(F)
        END
      ELSE
        BEGIN
          Res := -1;
          Val := -1
        END;
    END;
  ReadNumber := Res
END; {ReadNumber}
BEGIN {TestReadDigit}
  Sum := 0;
  WRITELN('Maxint:', MAXINT);
  Sum := ReadNumber(INPUT, 10);
  WRITELN(Sum)
END. {TestReadDigit}
