PROGRAM Split(INPUT, OUTPUT);
  {Копирует INPUT в OUTPUT,сначала нечетные,а затем четные
   элементы}
VAR
  Ch,Next: CHAR;
  Odds,Evens: TEXT;
PROCEDURE CopyOut(VAR F1: TEXT; VAR Ch: CHAR);
{Копируем F1 в OUTPUT}
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
  BEGIN {Разделяет INPUT в Odds и Evens}
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
          BEGIN{Прочитать Ch, записать в файл, выбранный через Next,
          переключить Next}
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
