PROGRAM StringFormater(INPUT, OUTPUT);
VAR
  Ch, Ch1, Ch2, Ch3, Ch4, Ch5, Ch6, Ch7, Ch8, Comment, IsStarted, IsEnded, BeginPrinted: CHAR;
PROCEDURE Init;
BEGIN {Init}
  Ch := ' ';
  Ch1 := ' ';
  Ch2 := ' ';
  Ch3 := ' ';
  Ch4 := ' ';
  Ch5 := ' ';
  Ch6 := ' ';
  Ch7 := ' ';
  Ch8 := ' ';
  IsStarted := 'N';
  IsEnded := 'N';
  BeginPrinted := 'N';
END;  {Init}
PROCEDURE SkipComments;
BEGIN {SkipComments}
  WHILE (Ch <> '}')
  DO
    BEGIN
      WRITE(Ch);
      READ(Ch)
    END;
  WRITE(Ch);
  BeginPrinted := 'N'
END; {SkipComments}
PROCEDURE SkipStrings   ;
BEGIN {SkipStrings}
  WRITE(Ch);
  READ(Ch);
  WHILE Ch <> ''''
  DO
    BEGIN
      WRITE(Ch);
      READ(Ch)
    END;
  WRITE(Ch)
END; {SkipStrings}
PROCEDURE MoveWindow;
BEGIN {MoveWindow}
  Ch1 := Ch2;
  Ch2 := Ch3;
  Ch3 := Ch4;
  Ch4 := Ch5;
  Ch5 := Ch6;
  Ch6 := Ch
END; {MoveWindow}
PROCEDURE CheckProgramStart;
BEGIN {CheckProgramStart}
  IF (Ch1 = 'B') AND (Ch2 = 'E') AND (Ch3 = 'G') AND (Ch4 = 'I') AND (Ch5 = 'N') AND ((Ch6 = ' ') OR (Ch6 = '{') OR (Ch6 = ';'))
  THEN
    BEGIN
      IsStarted := 'Y';
      IF Ch6 = ';'
      THEN
        BEGIN
          WRITELN;
          WRITE('  ')
        END
    END
END; {CheckProgramStart}
PROCEDURE CheckProgramEnd;
BEGIN {CheckProgramEnd}
  IF (Ch = 'E')
  THEN
    BEGIN
      READ(Ch);
      IF (Ch = 'N')
      THEN
        BEGIN
          READ(Ch);
          IF (Ch = 'D')
          THEN
            BEGIN
              READ(Ch);
              IF (Ch = '.') OR (Ch = ' ') OR (Ch = '{')
              THEN
                BEGIN
                  IsEnded := 'Y';
                  WRITELN;
                  WRITE('END');
                END
              ELSE
                WRITE('END')
            END
          ELSE
            WRITE('EN')
        END
      ELSE
        WRITE('E')
    END
END; {CheckProgramEnd}
BEGIN {StringFormater}
  Init;
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      MoveWindow;
      IF (IsStarted = 'N')
      THEN
        CheckProgramStart
      ELSE
        IF (IsEnded = 'N')
        THEN
          CheckProgramEnd;
      IF (Ch <> ' ') AND (Ch <> ';') AND (Ch <> ',') AND (Ch <> '''') AND (Ch <> '{') AND (Ch <> ':') AND (Ch <> '=')
      THEN
        BEGIN
          IF (IsStarted = 'Y') AND (BeginPrinted = 'N') AND (IsEnded = 'N')
          THEN
            BEGIN
              BeginPrinted := 'Y';
              WRITELN;
              WRITE('  ')
            END;
          WRITE(Ch)
        END;
      IF Ch = '{'
      THEN
        SkipComments;
      If Ch = ':'
      THEN
        WRITE(' ', Ch);
      IF Ch = ''''
      THEN
        SkipStrings;
      IF Ch = ';'
      THEN
        BEGIN
          IF (IsStarted = 'Y') AND (BeginPrinted = 'N') AND (IsEnded = 'N')
          THEN
            BEGIN
              BeginPrinted := 'Y';
              WRITELN;
              WRITE('  ')
            END;
          WRITE(Ch);
          BeginPrinted := 'N'
        END;
      IF (Ch = ',') OR (Ch = '=')
      THEN
        WRITE(Ch, ' ')
    END
END. {StringFormater}
