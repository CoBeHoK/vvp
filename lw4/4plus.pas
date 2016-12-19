PROGRAM CountNumber(INPUT, OUTPUT);
VAR
  Ch, Cntnum, Cntdec, Looking : CHAR;
BEGIN
  WRITELN('Please, enter string with ending ''#'':');
  READ(Ch);
  WRITE(Ch);
  Cntnum := '0';
  Cntdec := '0';
  Looking := 'Y';
  IF Ch = '#'
  THEN
    Looking := 'N';
  WHILE Looking = 'Y'
  DO
    BEGIN
      IF Cntnum = '0'
      THEN
        Cntnum := '1'
      ELSE
        IF Cntnum = '1'
        THEN
          Cntnum := '2'
        ELSE
          IF Cntnum = '2'
          THEN
            Cntnum := '3'
          ELSE
            IF Cntnum = '3'
            THEN
              Cntnum := '4'
            ELSE
              IF Cntnum = '4'
              THEN
                Cntnum := '5'
              ELSE
                IF Cntnum = '5'
                THEN
                  Cntnum := '6'
                ELSE
                  IF Cntnum = '6'
                  THEN
                    Cntnum := '7'
                  ELSE
                    IF Cntnum = '7'
                    THEN
                      Cntnum := '8'
                    ELSE
                      IF Cntnum = '8'
                      THEN
                        Cntnum := '9'
                      ELSE
                        IF Cntnum = '9'
                        THEN
                          BEGIN
                            IF Cntdec <> '9'
                            THEN
                              Cntnum := '0';
                            IF Cntdec = '0'
                            THEN
                              Cntdec := '1'
                            ELSE
                              IF Cntdec = '1'
                              THEN
                                Cntdec := '2'
                              ELSE
                                IF Cntdec = '2'
                                THEN
                                  Cntdec := '3'
                                ELSE
                                  IF Cntdec = '3'
                                  THEN
                                    Cntdec := '4'
                                  ELSE
                                    IF Cntdec = '4'
                                    THEN
                                      Cntdec := '5'
                                    ELSE
                                      IF Cntdec = '5'
                                      THEN
                                        Cntdec := '6'
                                      ELSE
                                        IF Cntdec = '6'
                                        THEN
                                          Cntdec := '7'
                                        ELSE
                                          IF Cntdec = '7'
                                          THEN
                                            Cntdec := '8'
                                          ELSE
                                            IF Cntdec = '8'
                                            THEN
                                              Cntdec := '9'
                                            ELSE
                                              IF Cntdec = '9'
                                              THEN
                                                BEGIN
                                                  Looking := 'F';
                                                END
                          END;
      READ(Ch);
      WRITE(Ch);
      IF Ch = '#'
      THEN
        Looking := 'F';
    END;
  WRITELN;
  IF Cntdec = '0' {количество десятков нулевое}
  THEN
    IF Cntnum = '0'
    THEN
      WRITELN('Enter at least 1 character')
    ELSE
      WRITELN('Number of characters is: ', Cntnum)
  ELSE
    IF Cntdec = '9'
    THEN
      IF Ch = '#'
      THEN
        WRITELN('Number of characters is: ', Cntdec, Cntnum)
      ELSE
        WRITELN('Number of characters is more than ', Cntdec, Cntnum)
    ELSE
      WRITELN('Number of characters is: ', Cntdec, Cntnum)
END.
