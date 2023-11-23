@echo off
net session >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo Administrator privileges is needed to run this script.
    pause
    exit
)

if "%1"=="" (set /p "UE=Enter Target Unreal Engine Path: ") else (set UE=%1)
rmdir /S /Q %UE%\Engine\Source\ThirdParty\Enoki

mkdir %UE%\Engine\Source\ThirdParty\Enoki\Include
mklink /D %UE%\Engine\Source\ThirdParty\Enoki\Include\enoki %~dp0include\enoki
xcopy %~dp0Enoki.Build.cs %UE%\Engine\Source\ThirdParty\Enoki
pause
