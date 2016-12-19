PROGRAM SarahRevere(INPUT, OUTPUT);
{Печать сообщения о том как идут британцы,
в зависимости от того, первым во входе встречается
'land' или 'sea'.}
VAR
  W1, W2, W3, W4, Looking: CHAR;
BEGIN {SarahRevere}
  BEGIN {инициализация W1,W2,W3,W4,Looking}
    W1 := ' ';
    W2 := ' ';
    W3 := ' ';
    W4 := ' ';
    Looking := 'Y';
  END;
  WHILE Looking = 'Y'
  DO
    BEGIN
      BEGIN { Двигать окно, проверять конец данных}
        W1 := W2;
        W2 := W3;
        W3 := W4;
        READ(W4);
        WRITE(W1, W2, W3, W4);
        IF W4 = '#'
        THEN {Конец данных}
          Looking := 'N'
        ELSE
          WRITE(',');
      END;
      { Проверка окна для 'land'}
      { Проверка окна для 'sea'}
    END;
  WRITELN
  {создать сообщение Sarah}
END. {SarahRevere}
