PROGRAM BubbleSortMLA(INPUT, OUTPUT);
{ �����㥬 ����� ��ப� INPUT � OUTPUT }
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
  F1, F2: TEXT;
BEGIN { BubbleSort }
  ASSIGN(F1, 'f1');
  ASSIGN(F2, 'f2');
  WHILE NOT EOF
  DO
    BEGIN
      BEGIN { �����㥬 INPUT � F1 }
        REWRITE(F1);
        WHILE NOT EOLN
        DO
          BEGIN
            READ(Ch);
            WRITE(F1, Ch);
          END;
      END;
      Sorted := 'N';
      WHILE Sorted = 'N'
      DO
        BEGIN
          REWRITE(F2);
          BEGIN { �����㥬 F1 � F2, �஢���� �����஢������� � ����⠢��� ���� �ᥤ��� ᨬ���� �� ���浪�}
            Sorted := 'Y';
            RESET(F1);
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
              END
          END;
          BEGIN  { �����㥬 F2 � F1 }
            RESET(F2);
            REWRITE(F1);
            WHILE NOT EOLN(F2)
            DO
              BEGIN
                READ(F2, Ch);
                WRITE(F1, Ch)
              END;
            WRITELN(F1)
          END
        END;
      BEGIN { �����㥬 F1 � OUTPUT }
        RESET(F1);
        WHILE NOT EOLN(F1)
        DO
          BEGIN
            READ(F1, Ch);
            WRITE(Ch)
          END;
        WRITELN
      END;
      READLN { ��ॢ���� �� ��砫� ᫥���饩 ��ப� }
    END
END. { BubbleSort }
