:start
@echo off
cls
title Калькулятор
color 71
echo Введите выражение:
set /p Exp=
set /a Result=%Exp%
cls
echo Вычислено
echo Ваше выражение:%Exp%
echo Результат:%Result%
echo.
echo Нажмите любую клавишу . . .
pause > nul
goto start