@echo off

.\..\..\..\tools\bsnes-plus-v05.87-master\bsnes-accuracy.exe .\vwf_dialogues.smc

echo.

IF %ERRORLEVEL% NEQ 0 (
	echo Running "vwf_dialogues.smc" in BSNES Debugger failed.
	echo.
	pause
	exit %ERRORLEVEL%
) ELSE (
	echo Running "vwf_dialogues.smc" in BSNES Debugger.
	echo.
)