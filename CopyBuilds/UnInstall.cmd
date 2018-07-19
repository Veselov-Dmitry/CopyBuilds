@ECHO OFF

REM The following directory is for .NET 4.0
set DOTNETFX2=%SystemRoot%\Microsoft.NET\Framework\v4.0.30319
set PATH=%PATH%;%DOTNETFX2%
SET INST=C:\Windows\Microsoft.NET\Framework64\v4.0.30319\InstallUtil /u
SET SERV=%~dp0CopyBuilds.exe
echo Installing IEPPAMS Win Service...
echo ---------------------------------------------------
%INST% %SERV% 
echo ---------------------------------------------------
echo Done.
setlocal
:PROMPT
SET /P AREYOUSURE=Delete LOG files (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

DEL %~dp0CopyBuilds.InstallLog
DEL %~dp0InstallUtil.InstallLog

:END
endlocal