set test_program=10_2.exe
REM Start test 1
%test_program% <./tests/inputs/input1.txt >output.txt
FC /B output.txt ./tests/outputs/output1.txt
IF ERRORLEVEL 1 GOTO err

REM Start test 2
%test_program% <./tests/inputs/input2.txt >output.txt
FC /B output.txt ./tests/outputs/output2.txt
IF ERRORLEVEL 1 GOTO err

REM Start test 3
%test_program% <./tests/inputs/input3.txt >output.txt
FC /B output.txt ./tests/outputs/output3.txt
IF ERRORLEVEL 1 GOTO err

REM Start test 4
%test_program% <./tests/inputs/input4.txt >output.txt
FC /B output.txt ./tests/outputs/output4.txt
IF ERRORLEVEL 1 GOTO err

REM Start test 5
%test_program% <./tests/inputs/input5.txt >output.txt
FC /B output.txt ./tests/outputs/output5.txt
IF ERRORLEVEL 1 GOTO err

REM Start test 6
%test_program% <./tests/inputs/input6.txt >output.txt
FC /B output.txt ./tests/outputs/output6.txt
IF ERRORLEVEL 1 GOTO err

REM Start test 7
%test_program% <./tests/inputs/input7.txt >output.txt
FC /B output.txt ./tests/outputs/output7.txt
IF ERRORLEVEL 1 GOTO err

REM Start test 6
%test_program% <./tests/inputs/input8.txt >output.txt
FC /B output.txt ./tests/outputs/output8.txt
IF ERRORLEVEL 1 GOTO err

REM Start test 6
%test_program% <./tests/inputs/input9.txt >output.txt
FC /B output.txt ./tests/outputs/output9.txt
IF ERRORLEVEL 1 GOTO err

REM Start test 6
%test_program% <./tests/inputs/input10.txt >output.txt
FC /B output.txt ./tests/outputs/output10.txt
IF ERRORLEVEL 1 GOTO err

ECHO Program testing succeeded :-)
del output.txt
EXIT

:err
ECHO Program testing failed :-(
EXIT