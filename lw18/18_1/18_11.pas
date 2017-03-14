PROGRAM SortMonth(INPUT, OUTPUT);
USES
  Date1;
VAR
  M1, M2: Month;
BEGIN
  Date1.ReadMonth(INPUT, M1);
  Date1.ReadMonth(INPUT, M2);
  IF (M1 = NoMonth) OR (M2 = NoMonth)
  THEN
    WRITELN('Input data is incorrect')
  ELSE
    IF M1 = M2
    THEN
      BEGIN
        WRITE('Both months are ');
        Date1.WriteMonth(OUTPUT, M1)
      END
    ELSE
      BEGIN
        Date1.WriteMonth(OUTPUT, M1);
        IF M1 < M2
        THEN
          WRITE(OUTPUT, ' before ')
        ELSE
          WRITE(OUTPUT, ' after ');
        Date1.WriteMonth(OUTPUT, M2);
        WRITELN
      END
END.
