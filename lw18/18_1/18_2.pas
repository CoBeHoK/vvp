PROGRAM SarahRevere(INPUT, OUTPUT);
VAR
  W1, W2, W3, W4: CHAR;
  Looking, Land, Sea: BOOLEAN;
BEGIN {SarahRevere}
  BEGIN {�������������}
    W1 := ' ';
    W2 := ' ';
    W3 := ' ';
    W4 := ' ';
    Looking := TRUE;
    Sea := FALSE;
    Land := FALSE;
  END;
  WHILE Looking AND NOT (Land OR Sea)
  DO
    BEGIN
      BEGIN {�������� ����}
        W1 := W2;
        W2 := W3;
        W3 := W4;
        READ(W4);
        Looking := W4 <> '#'
      END;
      Land := (W1 = 'l') AND (W2 = 'a') AND (W3 = 'n') AND (W4 = 'd'); {�������� ���� �� land}
      Sea := (W1 = 's') AND (W2 = 'e') AND (W3 = 'a') {�������� ���� �� sea}
    END;
  IF Land OR Sea
  THEN
    BEGIN
      WRITE('The British are coming by ');
      IF Land
      THEN
        WRITE('land')
      ELSE
        WRITE('sea')
    END
  ELSE
    WRITELN('Sarah didn''t say')
  {�������� ��������� Sarah}
END.  {SarahRevere}




