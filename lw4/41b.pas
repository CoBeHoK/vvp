PROGRAM PaulRevere(INPUT, OUTPUT);
{����� ᮮ⢥�����饣� ᮮ�饭�� ,������饣� �� ����稭�
�� �室�:  '...by land'  ��� L;  '...by sea'  ��� LL;
���� ����� �ᮡ饭�� �� �訡��}
VAR
  Lanterns: CHAR;
BEGIN {PaulRevere}
  {Read Lanterns}
  READ(Lanterns);
  {Issue Paul Revere's message}
  IF Lanterns <> 'L'
  THEN
    WRITELN('The North Church shows something wrong.')
  ELSE
    BEGIN
      READ(Lanterns);
      IF Lanterns = 'L'
      THEN
        WRITELN('The British are coming by sea.')
      ELSE
        WRITELN('The British are coming by land.')
    END
END. {PaulRevere}

