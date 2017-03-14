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
BEGIN {TestReadDigit}
  Sum := 0;
  WHILE NOT EOLN
  DO
    Sum := Sum + ReadDigit(INPUT);
  WRITELN(Sum)
END. {TestReadDigit}
