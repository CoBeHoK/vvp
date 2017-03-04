PROGRAM BubbleSort(INPUT, OUTPUT);
{ Сортируем первую строку INPUT в OUTPUT }
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
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
  WRITELN(F2);
END; {Copy}
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
      { Копируем F2 в F1 }
      Sorted := 'Y' {Отладочный оператор остановки цикла}
    END;
  RESET(F1);
  Copy(F1, OUTPUT);   { Копируем F1 в OUTPUT }
  CLOSE(F1);
END.{ BubbleSort }
