@echo off
rem Require a ship name argument
if "%~1"=="" (
    echo Usage: sslock.bat ^<shipname^> [console]
    echo.
    echo   shipname: a lower case ship name
    echo   console: optional; a lower case console name
    echo.
    setlocal enabledelayedexpansion
    echo Valid ship names:
    for /d %%D in (*-data) do (
        set "DIR=%%~nD"
        echo   !DIR:-data=!
    )
    echo.
    echo Valid console names:
    for %%F in (data\client_string_sets\*.txt) do (
        echo   %%~nF
    )
    endlocal
    echo.
    echo Example: sslock.bat artemis helm
    exit /b 1
)

rem Determine ship name
set "SHIPNAME=%~1"

rem Validate ship name
if not exist "%SHIPNAME%-data\" (
    echo ERROR: Invalid ship name "%SHIPNAME%".
    exit /b 1
)

rem Determine console name with default = none (unlocked)
set "CONSOLE=%~2"

echo Locking console to %SHIPNAME% %CONSOLE%...

rem Restore Starship Seattle configuration
xcopy /s /y "%SHIPNAME%-data\" "data\"

rem Validate console name (must match an existing file)
if not "%CONSOLE%"=="" (
    if not exist "data\client_string_sets\%CONSOLE%.txt" (
        echo ERROR: Invalid console "%CONSOLE%".
        exit /b 1
    )
)

rem Lock or unlock the client console
del /q "data\client_string_set.txt" 2>nul
if "%CONSOLE%"=="" (
    echo Unlocked console
) else (
    echo Locking console to %CONSOLE%...
    fsutil hardlink create "data\client_string_set.txt" "data\client_string_sets\%CONSOLE%.txt" >nul
    if errorlevel 1 (
        echo ERROR: Failed to lock console to "%CONSOLE%".
        exit /b 1
    )
)
