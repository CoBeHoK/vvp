PROGRAM BubbleSort(INPUT, OUTPUT);
{ �����㥬 ����� ��ப� INPUT � OUTPUT }
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
  F1, F2: TEXT;
BEGIN { BubbleSort }
  BEGIN { �����㥬 INPUT � F1 }
    ASSIGN(F1, 'F1'); {�⫠���� ������ }
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
  END; { �����㥬 INPUT � F1 }
  Sorted := 'N';
  WHILE Sorted = 'N'
  DO
    BEGIN
      { �����㥬 F1 � F2,�஢���� �����஢������� � ����⠢��� ���� �ᥤ��� ᨬ���� �� ���浪�}
      { �����㥬 F2 � F1 }
      Sorted := 'Y' {�⫠���� ������ ��⠭���� 横��}
    END;
  { �����㥬 F1 � OUTPUT }
END.{ BubbleSort }
