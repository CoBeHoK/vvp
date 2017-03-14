UNIT Date1;
INTERFACE
  TYPE
    Month = (NoMonth, Jan, Feb, Mar, Apr, May, Jun,
             Jul, Aug, Sep, Oct, Nov, Dec);
  PROCEDURE ReadMonth(VAR FIn: TEXT; VAR Mo: Month); {записываем в переменную Mo значение соответствующее содержимому входного файла FIn}
  PROCEDURE WriteMonth(VAR FOut: TEXT; VAR Mo: Month); {записываем в файл FOut значение соответствующее переменной FOut}

IMPLEMENTATION
  PROCEDURE ReadMonth(VAR FIn: TEXT; VAR Mo: Month);
    {Fin.3 = R и length(Fin.2) >= 3 ->
     читать три символа из Fin.2, затем присвоить Mo
     соответствующее значение типа Month, если это возможно,
     иначе присвоить Mo значение NoMonth}
  VAR
    Ch1, Ch2, Ch3: CHAR;
  BEGIN {ReadMonth}
    READ(FIn, Ch1, Ch2, Ch3);
    IF (Ch1 = 'J') AND (Ch2 = 'A') AND (Ch3 = 'N') THEN Mo := JAN ELSE 
    IF (Ch1 = 'F') AND (Ch2 = 'E') AND (Ch3 = 'B') THEN Mo := FEB ELSE
    IF (Ch1 = 'M') AND (Ch2 = 'A') AND (Ch3 = 'R') THEN Mo := MAR ELSE
    IF (Ch1 = 'A') AND (Ch2 = 'P') AND (Ch3 = 'R') THEN Mo := APR ELSE
    IF (Ch1 = 'M') AND (Ch2 = 'A') AND (Ch3 = 'Y') THEN Mo := MAY ELSE
    IF (Ch1 = 'J') AND (Ch2 = 'U') AND (Ch3 = 'N') THEN Mo := JUN ELSE
    IF (Ch1 = 'J') AND (Ch2 = 'U') AND (Ch3 = 'L') THEN Mo := JUL ELSE
    IF (Ch1 = 'A') AND (Ch2 = 'U') AND (Ch3 = 'G') THEN Mo := AUG ELSE
    IF (Ch1 = 'S') AND (Ch2 = 'E') AND (Ch3 = 'P') THEN Mo := SEP ELSE
    IF (Ch1 = 'O') AND (Ch2 = 'C') AND (Ch3 = 'T') THEN Mo := OCT ELSE
    IF (Ch1 = 'N') AND (Ch2 = 'O') AND (Ch3 = 'V') THEN Mo := NOV ELSE
    IF (Ch1 = 'D') AND (Ch2 = 'E') AND (Ch3 = 'C') THEN Mo := DEC
    ELSE Mo := NoMonth
  END; {ReadMonth}

  PROCEDURE WriteMonth(VAR FOut: TEXT; VAR Mo: Month);
    {Fin.3 = Ц и Mo <> NoMonth -> вывести три символа соответствующие значению Mo, в Fout.1}
  BEGIN {WriteMonth}
    IF Mo = JAN THEN WRITE(FOut, 'Jan') ELSE 
    IF Mo = FEB THEN WRITE(FOut, 'Feb') ELSE
    IF Mo = MAR THEN WRITE(FOut, 'Mar') ELSE
    IF Mo = APR THEN WRITE(FOut, 'Apr') ELSE
    IF Mo = MAY THEN WRITE(FOut, 'May') ELSE
    IF Mo = JUN THEN WRITE(FOut, 'Jun') ELSE
    IF Mo = JUL THEN WRITE(FOut, 'Jul') ELSE
    IF Mo = AUG THEN WRITE(FOut, 'Aug') ELSE
    IF Mo = SEP THEN WRITE(FOut, 'Sep') ELSE
    IF Mo = OCT THEN WRITE(FOut, 'Oct') ELSE
    IF Mo = NOV THEN WRITE(FOut, 'Nov') ELSE
    IF Mo = DEC THEN WRITE(FOut, 'Dec')
  END; {WriteMonth}
BEGIN
END.