ECHO OFF
CLS
:MENU
ECHO.
ECHO 1 - Select Porsche 964 mode with Celsius display
ECHO 2 - Select Porsche 964 mode with Fahrenheit display
ECHO 3 - Select Porsche 993 mode with Celsius display
ECHO 4 - Select Porsche 993 mode with Fahrenheit display
ECHO 5 - EXIT
ECHO.
SET /P M=Type 1, 2, 3, 4 or 5, then press ENTER:
IF %M%==1 GOTO 964
IF %M%==2 GOTO 964_F
IF %M%==3 GOTO 993
IF %M%==4 GOTO 993_F
IF %M%==5 GOTO EOF
:964
XCOPY scantool_964_cfg.txt scantool.cfg /Q/Y > nul
XCOPY "Trouble Codes 964.txt" "Trouble Codes.txt" /Q/Y > nul
ECHO.
ECHO 964 versions of scantool.cfg and Trouble codes.txt are now used by Scantool
ECHO Display of temperatures in Celsius.
GOTO EX
:964_F
XCOPY scantool_964_cfg_f.txt scantool.cfg /Q/Y > nul
XCOPY "Trouble Codes 964.txt" "Trouble Codes.txt" /Q/Y > nul
ECHO.
ECHO 964 versions of scantool.cfg and Trouble codes.txt are now used by Scantool.
ECHO Display of temperatures in Fahrenheit.
GOTO EX
:993
XCOPY scantool_993_cfg.txt scantool.cfg /Q/Y > nul
XCOPY "Trouble Codes 993.txt" "Trouble Codes.txt" /Q/Y > nul
ECHO.
ECHO 993 versions of scantool.cfg and Trouble codes.txt are now used by Scantool.
ECHO Display of temperatures in Celsius.
GOTO EX
:993_F
XCOPY scantool_993_cfg_f.txt scantool.cfg /Q/Y > nul
XCOPY "Trouble Codes 993.txt" "Trouble Codes.txt" /Q/Y > nul
ECHO.
ECHO 993 versions of scantool.cfg and Trouble codes.txt are now used by Scantool. 
ECHO Display of temperatures in Fahrenheit. 
:EX
ECHO.
pause