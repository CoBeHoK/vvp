PROGRAM WithoutLast(INPUT, OUTPUT);
{ �뢮��� �� ᨬ���� �஬� ��᫥����� �� INPUT }
VAR
  Ch: CHAR;
BEGIN { Last }
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      IF NOT EOLN
      THEN
        WRITE(Ch)
    END;
  WRITELN
END. { Last }
