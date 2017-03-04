PROGRAM BubbleSort(INPUT, OUTPUT);
{ Сортируем первую строку INPUT в OUTPUT }
VAR
  Sorted: CHAR;
  F1, F2: TEXT;
PROCEDURE Copy(VAR F1, F2: TEXT);
VAR
  Ch: CHAR;
BEGIN {Copy}
  WHILE NOT EOLN(F1)
    DO
      BEGIN
        READ(F1, Ch);
        WRITE(F2, Ch)
      END;
  WRITELN(F2)
END; {Copy}
PROCEDURE IterSort(VAR F1, F2: TEXT);
VAR
  Ch1, Ch2: CHAR;
BEGIN {CopyWithCheck}
  IF NOT EOLN(F1)
  THEN
    BEGIN
      READ(F1, Ch1);
      WHILE NOT EOLN(F1)
      DO { По крайней мере два символа остается для Ch1,Ch2 }
        BEGIN
          READ(F1, Ch2);
          { Выводим   min(Ch1,Ch2) в  F2, записывая отсортированные символы }
          IF Ch1 <= Ch2
          THEN
            BEGIN
              WRITE(F2, Ch1);
              Ch1 := Ch2
            END
          ELSE
            BEGIN
              WRITE(F2, Ch2);
              Sorted := 'N'
            END
        END;
      WRITELN(F2, Ch1); { Выводим последний символ в F2 }
    END;
END; {CopyWithCheck}

BEGIN { BubbleSort }
  ASSIGN(F1, 'F1.DAT');
  ASSIGN(F2, 'F2.DAT');
  REWRITE(F1);
  Copy(INPUT, F1); { Копируем INPUT в F1 }
  CLOSE(F1);
  Sorted := 'N';
  WHILE Sorted = 'N'
  DO
    BEGIN
      { Копируем F1 в F2,проверяя отсортированность и переставляя первые соседнии символы по порядку}
      Sorted := 'Y';
      RESET(F1);
      REWRITE(F2);
      IterSort(F1, F2);
      CLOSE(F1);
      CLOSE(F2);
      RESET(F2);
      REWRITE(F1);
      Copy(F2, F1); { Копируем F2 в F1 }
      CLOSE(F1);
      CLOSE(F2)
    END;
  { Копируем F1 в OUTPUT }
  RESET(F1);
  Copy(F1, OUTPUT);
  CLOSE(F1);
END.{ BubbleSort }
