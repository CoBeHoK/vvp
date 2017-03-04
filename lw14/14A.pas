PROGRAM RSort(INPUT, OUTPUT);
VAR
  F1: TEXT;
PROCEDURE CopyFile(VAR F1, F2: TEXT);
{�������� ���������� ����� F1 � F2}
VAR
  Ch: CHAR;
BEGIN
  REWRITE(F2);
  IF NOT EOF(F1)
  THEN
    BEGIN
      WHILE NOT EOLN(F1)
      DO
        BEGIN
          READ(F1, Ch);
          WRITE(F2, Ch)
        END
    END;
  WRITELN(F2)
END;
PROCEDURE ShowFile(VAR F1: TEXT);
{������� ���������� F1 �� ����� (���������� ���������)}
VAR
  Ch: CHAR;
BEGIN {ShowFile}
  RESET(F1);
  WHILE NOT EOLN(F1)
  DO
    BEGIN
      READ(F1, Ch);
      WRITE(Ch);
    END;
  WRITELN;
END; {ShowFile}

PROCEDURE RecursiveSort(VAR F1: TEXT);
VAR
  F2, F3: TEXT;
  Ch: CHAR;
PROCEDURE Split(VAR F1, F2, F3: TEXT);
{��������� F1 �� F2, F3}
VAR
  Ch, Switch: CHAR;
BEGIN {Split}
  WRITE('Contents of file F1:');
  ShowFile(F1);
  RESET(F1);
  REWRITE(F2);
  REWRITE(F3);
  BEGIN {���������� F1 ����������� � F2 � F3}
    Switch := '2';
    WHILE NOT (EOLN(F1))
    DO
      BEGIN
        READ(F1, Ch);
        IF (Switch = '2')
        THEN
          BEGIN
            WRITE(F2, Ch);
            Switch := '3';
          END
        ELSE
          BEGIN
            WRITE(F3, Ch);
            Switch := '2';
          END
      END
  END;
  WRITELN(F2);
  WRITELN(F3);
  WRITE('Contents of file F2:');
  ShowFile(F2);
  WRITE('Contents of file F3:');
  ShowFile(F3)
END; {Split}
{PROCEDURE Merge(VAR F1, F2, F3: TEXT)
 ������� F2 � F3 � F1}
BEGIN {RecursiveSort}
  RESET(F1);
  IF NOT (EOLN(F1))
  THEN
    BEGIN
      READ(F1, Ch);
      IF NOT (EOLN(F1))
      THEN {���� ����� ��� ������� 2 �������}
        BEGIN
          Split(F1, F2, F3);
          {RecursiveSort(F2);
          RecursiveSort(F3);
          Merge(F1, F2, F3);}
        END
    END
END;   {RecursiveSort}
BEGIN
  {ASSIGN(F1, 'tmp');}
  CopyFile(INPUT, F1);
  WRITE('Source file:');
  ShowFile(F1);
  RecursiveSort(F1)
END.

