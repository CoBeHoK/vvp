PROGRAM Last(INPUT, OUTPUT);
{ �뢮��� ��᫥���� ᨬ��� �� INPUT � OUTPUT }
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
