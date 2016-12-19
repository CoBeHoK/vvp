PROGRAM PaulRevere(INPUT, OUTPUT);
{Печать соответствующего сообщения ,зависящего от величины
на входе:  '...by land'  для L;  '...by sea'  для LL;
иначе печать ссобщения об ошибке}
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

