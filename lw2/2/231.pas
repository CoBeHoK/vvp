PROGRAM Less(INPUT, OUTPUT);
VAR
  Ch: CHAR;
BEGIN
  WRITELN('�������� ������:');
  READ(Ch);
  WRITELN('������ ��� ��������:');
  WHILE Ch <> '#'
  DO
    BEGIN
      IF Ch <> ' '
      THEN
        WRITE(Ch);
      READ(Ch);
    END;
  WRITELN
END.
