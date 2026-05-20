@echo off
cd /d "%~dp0"
echo Building and running (console shows errors)...
dotnet build -c Release
if errorlevel 1 pause & exit /b 1
dotnet run -c Release --no-build
echo Exit code: %ERRORLEVEL%
pause
