PROGRAM SortMonth(INPUT, OUTPUT);
USES
  Date1;
VAR
  M1: Month;
BEGIN
  Date1.ReadMonth(INPUT, M1);
  Date1.WriteMonth(OUTPUT, M1)
END.
