@echo off

copy /B/Y .\..\..\..\baserom\lm2mb_sa1.smc .\patched.smc

echo.

IF %ERRORLEVEL% NEQ 0 (
	echo Copying "lm1mb_sa1.smc" to "patched.smc" failed.
	echo.
	pause
	exit %ERRORLEVEL%
) ELSE (
	echo Copied "lm1mb_sa1.smc" to "patched.smc".
	echo.
)

.\..\..\..\tools\asar\asar.exe --symbols=wla --symbols-path=".\patched.cpu.sym" .\..\tolerance_timer.asm .\patched.smc

echo.

IF %ERRORLEVEL% NEQ 0 (
	echo Patching "tolerance_timer.asm" to "patched.smc" failed.
	echo.
	pause
	exit %ERRORLEVEL%
) ELSE (
	echo Patched "tolerance_timer.asm" to "patched.smc".
	echo.
)