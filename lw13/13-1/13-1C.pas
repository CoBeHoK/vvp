PROGRAM BubbleSort(INPUT, OUTPUT);
{ �����㥬 ����� ��ப� INPUT � OUTPUT }
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
      DO { �� �ࠩ��� ��� ��� ᨬ���� ��⠥��� ��� Ch1,Ch2 }
        BEGIN
          READ(F1, Ch2);
          { �뢮���   min(Ch1,Ch2) �  F2, �����뢠� �����஢���� ᨬ���� }
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
      WRITELN(F2, Ch1); { �뢮��� ��᫥���� ᨬ��� � F2 }
    END;
END; {CopyWithCheck}

BEGIN { BubbleSort }
  ASSIGN(F1, 'F1.DAT');
  ASSIGN(F2, 'F2.DAT');
  REWRITE(F1);
  Copy(INPUT, F1); { �����㥬 INPUT � F1 }
  CLOSE(F1);
  Sorted := 'N';
  WHILE Sorted = 'N'
  DO
    BEGIN
      { �����㥬 F1 � F2,�஢���� �����஢������� � ����⠢��� ���� �ᥤ��� ᨬ���� �� ���浪�}
      Sorted := 'Y';
      RESET(F1);
      REWRITE(F2);
      IterSort(F1, F2);
      CLOSE(F1);
      CLOSE(F2);
      RESET(F2);
      REWRITE(F1);
      Copy(F2, F1); { �����㥬 F2 � F1 }
      CLOSE(F1);
      CLOSE(F2)
    END;
  { �����㥬 F1 � OUTPUT }
  RESET(F1);
  Copy(F1, OUTPUT);
  CLOSE(F1);
END.{ BubbleSort }
