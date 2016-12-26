PROGRAM DeleteSpaces(INPUT, OUTPUT);
VAR
  Ch: CHAR;
PROCEDURE SkipSpaces;
BEGIN
  WHILE (Ch = ' ') AND (NOT EOLN)
  DO
    READ(Ch);
END;
PROCEDURE ReadWord;
BEGIN
  WHILE (Ch <> ' ') AND (NOT EOLN)
  DO
    BEGIN
      WRITE(Ch);
      READ(Ch)
    END;
END;
BEGIN
  Ch := ' ';
  SkipSpaces;
  WHILE NOT EOLN
  DO
    BEGIN
      ReadWord;
      Skipspaces;
      IF NOT EOLN
      THEN
        WRITE(' ')
    END;
  WRITELN('#')
END.
