@echo off
cd /d "%~dp0"

set "EXE=bin\Release\net6.0-windows\LetterCompareApp.exe"
if not exist "%EXE%" (
    echo Building Letter Compare...
    dotnet build -c Release
    if errorlevel 1 (
        echo Build failed.
        pause
        exit /b 1
    )
)

echo Starting Letter Compare...
start "" "%CD%\%EXE%"
if errorlevel 1 (
    echo Failed to start. Try: dotnet run -c Release
    pause
    exit /b 1
)
