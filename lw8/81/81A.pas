PROGRAM BubbleSort(INPUT, OUTPUT);
{ Сортируем первую строку INPUT в OUTPUT }
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
  F1, F2: TEXT;
BEGIN { BubbleSort }
  BEGIN { Копируем INPUT в F1 }
    ASSIGN(F1, 'F1'); {Отладочный оператор }
    REWRITE(F1);
    WHILE NOT EOLN
    DO
      BEGIN
        READ(Ch);
        WRITE(F1, Ch);
	WRITE(Ch)
      END;
    CLOSE(F1);
    WRITELN
  END; { Копируем INPUT в F1 }
  Sorted := 'N';
  WHILE Sorted = 'N'
  DO
    BEGIN
      { Копируем F1 в F2,проверяя отсортированность и переставляя первые соседнии символы по порядку}
      { Копируем F2 в F1 }
      Sorted := 'Y' {Отладочный оператор остановки цикла}
    END;
  { Копируем F1 в OUTPUT }
END.{ BubbleSort }
