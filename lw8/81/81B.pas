PROGRAM BubbleSort(INPUT, OUTPUT);
{ Сортируем первую строку INPUT в OUTPUT }
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
  F1, F2: TEXT;
BEGIN { BubbleSort }
  BEGIN { Копируем INPUT в F1 }
    ASSIGN(F1, 'F1');
    ASSIGN(F2, 'F2');
    REWRITE(F1);
    WHILE NOT EOLN
    DO
      BEGIN
        READ(Ch);
        WRITE(F1, Ch);
      END;
    WRITELN
  END; { Копируем INPUT в F1 }
  Sorted := 'N';
  WHILE Sorted = 'N'
  DO
    BEGIN
      BEGIN { Копируем F1 в F2, проверяя отсортированность и переставляя первые соседнии символы по порядку}
        Sorted := 'Y';
        RESET(F1);
        REWRITE(F2);
        IF NOT EOLN(F1)
        THEN
          BEGIN
            READ(F1, Ch1);
            WHILE NOT EOLN(F1)
            DO { По крайней мере два символа остается для Ch1,Ch2 }
              BEGIN
                READ(F1, Ch2);
                WRITELN(Ch1, ',', Ch2); { Отладочные операторы вывода на  }
                Ch1 := Ch2;             { экран сравниваемых пар символов }
                { Выводим   min(Ch1,Ch2) в  F2, записывая
                отсортированные символы }
              END;
            WRITELN(F2, Ch1) { Выводим последний символ в F2 }
          END
      END;
      { Копируем F2 в F1 }
      Sorted := 'Y' {Отладочный оператор остановки цикла}
    END;
  { Копируем F1 в OUTPUT }
END. { BubbleSort }
