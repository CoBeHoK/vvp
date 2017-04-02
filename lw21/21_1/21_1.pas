PROGRAM Prime(INPUT, OUTPUT);
{Program prints prime numbers from 2 to 100}
CONST
  Min = 2;
  Max = 100;
TYPE
  IntSet = SET OF Min .. Max;
VAR
  Int, IntToDel: INTEGER;
  Sieve: IntSet;
BEGIN {AverageScore}
  Int := Min;
  Sieve := [Min .. Max];
  WRITE('Set of primes from ', Min, ' to ', Max, ':');
  WHILE (Int <= Max)
  DO
    BEGIN
      IF (Int IN Sieve)
      THEN
        BEGIN
          WRITE(' ', Int);
          IntToDel := Int;
          WHILE (IntToDel <= Max)
          DO
            BEGIN
              Sieve := Sieve - [IntToDel];
              IntToDel := IntToDel + Int
            END
        END;
      Int := Int + 1
    END;
  WRITELN
END.  {AverageScore}
