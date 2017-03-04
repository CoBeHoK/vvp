PROGRAM Reverse(INPUT, OUTPUT);
{ Выводит все символы из INPUT в обратном порядке }
VAR
  Ch: CHAR;
  F1, F2: TEXT;
BEGIN { Reverse }
  ASSIGN(F1, 'OUT');
  ASSIGN(F2, 'OUT2');
  REWRITE(F1);
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      WRITE(F1, Ch)
    END;
  RESET(F1);
  WHILE NOT EOF(F1)
  DO
    BEGIN
      REWRITE(F2);
      WHILE NOT EOF(F1)
      DO
        BEGIN
          READ(F1, Ch);
          IF NOT EOF(F1)
          THEN
            WRITE(F2, Ch)
          ELSE
            WRITE(Ch)
        END;
      RESET(F2);
      REWRITE(F1);
      WHILE NOT EOF(F2)
      DO
        BEGIN
          READ(F2, Ch);
          IF NOT EOF(F2)
          THEN
            WRITE(F1, Ch)
          ELSE
            WRITE(Ch)
        END;
      RESET(F1)
    END;
  WRITELN
END. { Reverse }
