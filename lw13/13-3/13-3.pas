PROGRAM Split(INPUT, OUTPUT);
  {�������� INPUT � OUTPUT,������� ��������,� ����� ������
   ��������}
VAR
  Ch,Next: CHAR;
  Odds,Evens: TEXT;
PROCEDURE CopyOut(VAR F1: TEXT; VAR Ch: CHAR);
{�������� F1 � OUTPUT}
BEGIN
  RESET(F1);
  WHILE NOT EOF(F1)
  DO
    BEGIN
      WHILE NOT EOLN
      DO
        BEGIN
          READ(F1, Ch);
          WRITE(Ch)
        END
    END
END;
BEGIN {Split}
  BEGIN {��������� INPUT � Odds � Evens}
    ASSIGN(Odds, 'Odds.dat');
    ASSIGN(Evens, 'Evens.dat');
    REWRITE(Odds);
    REWRITE(Evens);
    Next := 'O';
    WHILE NOT EOF
    DO
      BEGIN
        WHILE NOT EOLN
        DO
          BEGIN{��������� Ch, �������� � ����, ��������� ����� Next,
          ����������� Next}
            READ(Ch);
            IF Next = 'O'
            THEN
              BEGIN
                WRITE(Odds, Ch);
                Next := 'E'
              END
            ELSE
              BEGIN
                WRITE(Evens, Ch);
                Next := 'O'
              END
          END;
        READLN;
      END;
    WRITELN(Odds);
    WRITELN(Evens)
  END;
  CopyOut(Odds, Ch);
  CopyOut(Evens, Ch);
  WRITELN
END. {Split}
