PROGRAM BubbleSort(INPUT, OUTPUT);
{ �����㥬 ����� ��ப� INPUT � OUTPUT }
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
  F1, F2: TEXT;
BEGIN { BubbleSort }
  BEGIN { �����㥬 INPUT � F1 }
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
  END; { �����㥬 INPUT � F1 }
  Sorted := 'N';
  WHILE Sorted = 'N'
  DO
    BEGIN
      BEGIN { �����㥬 F1 � F2, �஢���� �����஢������� � ����⠢��� ���� �ᥤ��� ᨬ���� �� ���浪�}
        Sorted := 'Y';
        RESET(F1);
        REWRITE(F2);
        IF NOT EOLN(F1)
        THEN
          BEGIN
            READ(F1, Ch1);
            WHILE NOT EOLN(F1)
            DO { �� �ࠩ��� ��� ��� ᨬ���� ��⠥��� ��� Ch1,Ch2 }
              BEGIN
                READ(F1, Ch2);
                WRITELN(Ch1, ',', Ch2); { �⫠���� ������� �뢮�� ��  }
                Ch1 := Ch2;             { �࠭ �ࠢ�������� ��� ᨬ����� }
                { �뢮���   min(Ch1,Ch2) �  F2, �����뢠�
                �����஢���� ᨬ���� }
              END;
            WRITELN(F2, Ch1) { �뢮��� ��᫥���� ᨬ��� � F2 }
          END
      END;
      { �����㥬 F2 � F1 }
      Sorted := 'Y' {�⫠���� ������ ��⠭���� 横��}
    END;
  { �����㥬 F1 � OUTPUT }
END. { BubbleSort }
