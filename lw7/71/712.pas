PROGRAM Split(INPUT, OUTPUT);
{�������� ����� ���� �������, �������������� # 
 �� INPUT � OUTPUT}
VAR
  Ch, Next: CHAR;
  Evens, Odds: TEXT;
  {Next - ������������ ����� ��������� (Odd-'O') 
   � ������� (Even-'E')}
BEGIN {Split}
  Next := 'O';
  READ(Ch);
  REWRITE(Evens);
  REWRITE(Odds);
  WHILE Ch <> '#'
  DO
    BEGIN
      IF Next = 'O'
      THEN {����������� �������� ��������}
        WRITE(Odds, Ch)
      ELSE
        WRITE(Evens, Ch);
      {������������ Next}
      IF Next = 'O'
      THEN
        Next := 'E' {Even}
      ELSE
        Next := 'O' ;
      READ(Ch);
    END;
  WRITE(Odds, '#');
  WRITE(Evens, '#');
  RESET(Odds);
  READ(Odds, Ch);
  WHILE Ch <> '#'
  DO
    BEGIN
      WRITE(Ch);
      READ(Odds, Ch)
    END;
  WRITELN
END. {Split}
