PROGRAM BubbleSort(INPUT, OUTPUT);
{ �����㥬 ����� ��ப� INPUT � OUTPUT }
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
  Copy(INPUT, F1); { �����㥬 INPUT � F1 }
  CLOSE(F1);
  Sorted := 'N';
  WHILE Sorted = 'N'
  DO
    BEGIN
      { �����㥬 F1 � F2,�஢���� �����஢������� � ����⠢��� ���� �ᥤ��� ᨬ���� �� ���浪�}
      { �����㥬 F2 � F1 }
      Sorted := 'Y' {�⫠���� ������ ��⠭���� 横��}
    END;
  RESET(F1);
  Copy(F1, OUTPUT);   { �����㥬 F1 � OUTPUT }
  CLOSE(F1);
END.{ BubbleSort }
