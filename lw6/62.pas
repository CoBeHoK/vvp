PROGRAM SarahRevere(INPUT, OUTPUT);
{����� ᮮ�饭�� � ⮬ ��� ���� ��⠭��,
� ����ᨬ��� �� ⮣�, ���� �� �室� ����砥���
'land' ��� 'sea'.}
VAR
  W1, W2, W3, W4, Looking: CHAR;
BEGIN{PaulRevere}
  BEGIN {���樠������ W1,W2,W3,W4,Looking}
    W1 := ' ';
    W2 := ' ';
    W3 := ' ';
    W4 := ' ';
    Looking := 'Y';
  END;
  WHILE Looking = 'Y'
  DO
    BEGIN
      BEGIN { ������� ����, �஢����� ����� ������}
        W1 := W2;
        W2 := W3;
        W3 := W4;
        READ(W4);
        IF W4 = '#'
        THEN {����� ������}
          Looking := 'N'
      END;
      BEGIN {�஢�ઠ ���� ��� 'land'}
        IF (W1 = 'l') AND (W2 = 'a') AND (W3 = 'n') AND (W4 = 'd')
        THEN {'land' �������}
          Looking := 'L'
      END;
      BEGIN {�஢�ઠ ���� ��� 'sea'}
        IF (W1 = 's') AND (W2 = 'e') AND (W3 = 'a')
        THEN {'sea' �������}
          Looking := 'S'
      END;
    END;
  WRITELN;
  BEGIN {ᮧ���� ᮮ�饭�� Sarah}
    IF Looking = 'L'
    THEN
      WRITELN('The British are coming by land.')
    ELSE
      IF Looking = 'S'
      THEN
        WRITELN('The British are coming by sea.')
      ELSE
        WRITELN('Sarah didn''t say')
  END;
END.{PaulRevere}