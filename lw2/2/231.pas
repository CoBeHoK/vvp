PROGRAM Less(INPUT, OUTPUT);
VAR
  Ch: CHAR;
BEGIN
  WRITELN('ˆ‘•Ž„€Ÿ ‘’ŽŠ€:');
  READ(Ch);
  WRITELN('‘’ŽŠ€ …‡ Ž…‹Ž‚:');
  WHILE Ch <> '#'
  DO
    BEGIN
      IF Ch <> ' '
      THEN
        WRITE(Ch);
      READ(Ch);
    END;
  WRITELN
END.
