PROGRAM Check(INPUT, OUTPUT);
VAR
  F1, F2: TEXT;
  Res: CHAR;
VAR
  Ch: CHAR;
PROCEDURE Lexico(VAR F1, F2: TEXT; VAR Result: CHAR);
{Result 0, 1, 2 �᫨ ���ᨪ�����᪨� ���冷� F1 =, <, > 祬 F2
ᮮ⢥��⢥���. �����᪨� ��ࠬ����, ᮮ⢥�����騥 F1 � F2,
������ ���� ࠧ���묨}
VAR 
  Ch1, Ch2: CHAR;
BEGIN {Lexico}
  RESET(F1);
  RESET(F2);
  Result := '0';
  WHILE (NOT EOLN(F1) AND NOT EOLN(F2)) AND (Result = '0')
  DO
    BEGIN
      READ(F1, Ch1);
      READ(F2, Ch2);
      IF (Ch1 < Ch2) OR (EOLN(F1) AND (NOT EOLN(F2)))
      THEN {Ch1 < Ch2 ��� F1 ���� F2}
        Result := '1'
      ELSE
        IF (Ch1 > Ch2) OR (EOLN(F2) AND (NOT EOLN(F1)))
        THEN {Ch1 > Ch2 ��� F2 ���� F1}
          Result := '2'
    END; {WHILE}
  IF (EOLN(F1) AND (NOT EOLN(F2))) {�᫨ F1 ����砫쭮 ����}
  THEN
    Result := '1';
  IF (EOLN(F2)) AND (NOT EOLN(F1)) {�᫨ F2 ����砫쭮 ����}
  THEN
    Result := '2';
END; {Lexico}
BEGIN
  ASSIGN(F1, 'F1.DAT');
  ASSIGN(F2, 'F2.DAT');
  Lexico(F1, F2, Res);
  WRITELN(Res);
END.