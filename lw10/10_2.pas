PROGRAM StringFormater(INPUT, OUTPUT);
VAR
  Ch, Ch1, Ch2, Ch3, Ch4, Ch5, Ch6, Ch7, Ch8, Comment, IsStarted, IsEnded: CHAR;
  CommentFile: TEXT;
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
  ASSIGN(CommentFile, 'tmp');
  REWRITE(CommentFile)
END;  {Init}
PROCEDURE SkipComments;
BEGIN {SkipComments}
  WHILE Ch <> '}'
  DO
    BEGIN
      WRITE(CommentFile, Ch);
      READ(Ch)
    END;
  WRITE(CommentFile, Ch)
END; {SkipComments}
PROCEDURE PrintComments;
BEGIN {PrintComments}
  CLOSE(CommentFile);
  RESET(CommentFile);
  WHILE NOT EOF(CommentFile)
  DO
    BEGIN
      READ(CommentFile, Comment);
      WRITE(Comment)
    END;
  CLOSE(CommentFile);
  REWRITE(CommentFile)
END; {PrintComments}
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
  IF (Ch1 = 'B') AND (Ch2 = 'E') AND (Ch3 = 'G') AND (Ch4 = 'I') AND (Ch5 = 'N') AND (Ch6 = ' ')
  THEN
    BEGIN
      IsStarted := 'Y';
      WRITELN;
      WRITE('  ')
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
                  PrintComments;
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
        WRITE(Ch);
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
          WRITE(Ch);
          PrintComments;
          WRITELN;
          WRITE('  ')
        END;
      IF (Ch = ',') OR (Ch = '=')
      THEN
        WRITE(Ch, ' ')
    END
END. {StringFormater}
