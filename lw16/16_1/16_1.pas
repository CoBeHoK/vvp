PROGRAM CountReverse(INPUT, OUTPUT);
USES Count3;
{Программа для подсчета реверсов в строке символов.
Реверсом являются три последовательных символа, такие,
что средний символ больше или меньше крайних}
VAR
  Ch1, Ch2, Ch3, X100, X10, X1, IsError: CHAR;
PROCEDURE MoveWindow;
BEGIN {MoveWindow}
  Ch1 := Ch2;
  Ch2 := Ch3;
  READ(Ch3)
END; {MoveWindow}
BEGIN {CountReverse}
  Count3.Start;
  IsError := 'Y';
  IF NOT EOLN
  THEN
    BEGIN
      READ(Ch1);
      IF NOT EOLN
      THEN
        BEGIN
          READ(Ch2);
          IF NOT EOLN
          THEN
            BEGIN
              READ(Ch3);
              WHILE NOT EOLN
              DO
                BEGIN
                  IF IsError = 'Y'
                  THEN
                    IsError := 'N';
                  IF (Ch2 > Ch3) AND (Ch2 > Ch1)
                  THEN
                    Count3.Bump;                  
                  IF (Ch2 < Ch3) AND (Ch2 < Ch1)
                  THEN
                    BEGIN
                      Count3.Bump;                  
                      MoveWindow
                    END
                END
            END;
  IF IsError = 'Y'
  THEN
    WRITELN('Enter at least 3 symbols');
  Count3.Value(X100, X10, X1);
  WRITELN('Count of reverses:', X100, X10, X1)
END. {CountReverse}
