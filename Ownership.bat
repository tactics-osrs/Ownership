@echo off
:loop
set /p "path=Path of file/folder you want to take full ownership of: "
if exist "%path%" (
    takeown /F "%path%" /R /D Y
    icacls "%path%" /grant "%USERNAME%":(F) /T /C /Q
    echo Ownership taken and full control permissions granted for %path%
    pause
) else (
    echo The path %path% does not exist. Please enter a valid path.
    pause
    goto loop
)
