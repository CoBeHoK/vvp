PROGRAM Split(INPUT, OUTPUT);
{Копирует через один символы, предшествующие # 
 из INPUT в OUTPUT}
VAR
  Ch, Next: CHAR;
  Evens, Odds: TEXT;
  {Next - преключатель между нечетными (Odd-'O') 
   и четными (Even-'E')}
BEGIN {Split}
  Next := 'O';
  READ(Ch);
  ASSIGN(Evens, 'Evens');
  ASSIGN(Odds, 'Odds');
  REWRITE(Evens);
  REWRITE(Odds);
  WHILE Ch <> '#'
  DO
    BEGIN
      IF Next = 'O'
      THEN {Копирование нечетных символов}
        WRITE(Odds, Ch)
      ELSE
        WRITE(Evens, Ch);
      {Переключение Next}
      IF Next = 'O'
      THEN
        Next := 'E' {Even}
      ELSE
        Next := 'O' ;
    READ(Ch);
    END;
  WRITE(Odds, '#');
  WRITE(Evens, '#');
END. {Split}
