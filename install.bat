:: Make output cleaner
@echo off

:: Load configuration
call config.bat

::Combine steam executable path
set steamcmd_executable=%steamcmd_dir%\steamcmd.exe

:: Check if steamcmd.exe exists
:: If not, download it
if NOT exist %steamcmd_executable% (
    powershell -ExecutionPolicy Bypass -File "dl_steamcmd.ps1" -steamcmd_dir %steamcmd_dir%
)

call "download.bat"