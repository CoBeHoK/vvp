PROGRAM RemoveSpaces(INPUT, OUTPUT);
VAR
  F1: TEXT;
  Ch, Mem, IsChar: CHAR;
PROCEDURE IfChar(VAR Ch, IsCh: CHAR);
BEGIN {IfChar}
  IsCh := 'N';
  IF ((Ch >= 'a') AND (Ch <= 'z')) OR ((Ch >= 'A') AND (Ch <= 'Z'))
  THEN
    IsCh := 'Y';
  IF ((Ch >= '�') AND (Ch <= '�')) OR ((Ch >= '�') AND (Ch <= '�'))
  THEN
    IsCh := 'Y';
END; {IfChar}
BEGIN {RemoveSpaces}
  Mem := 'B';
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      IfChar(Ch, IsChar);
      IF (Mem = 'B') AND (IsChar = 'Y')
      THEN
        BEGIN
          Mem := '1';
          WRITE(Ch);
        END
      ELSE
        IF (Mem = 'B') AND (Ch = ' ') {��������� B - ������}
        THEN
          Mem := 'B'
        ELSE
          WRITE('Unexpected symbol: ', Ch);
      IF (Mem = '1') {��������� 1 - �����}
      THEN
        IF (IsChar = 'Y')
        THEN
          WRITE(Ch)
        ELSE
          IF (Ch = ',')
          THEN
            BEGIN
              WRITE(Ch);
              Mem := '2'
            END
          ELSE
            IF (Ch = '.')
            THEN
              BEGIN
                WRITE(Ch);
                Mem := 'E'
              END
                 
      ELSE
        IF ()

      END
    END
END. {RemoveSpaces}

