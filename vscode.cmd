@ECHO OFF

REM *** Open VisualStudioCode and continue, forward all commandline arguments
START /b cmd /c "c:\Program Files\Microsoft VS Code\Code.exe" %*
ECHO VSCode started...