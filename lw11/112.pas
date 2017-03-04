PROGRAM Last(INPUT, OUTPUT);
{ Выводит последний символ из INPUT в OUTPUT }
VAR
  Ch: CHAR;
BEGIN { Last }
  IF NOT EOF
  THEN
    BEGIN
      WHILE NOT EOF
      DO
        READ(Ch);
      WRITE(Ch)
    END;
  WRITELN
END. { Last }
