:: Make output cleaner
@echo off
:: Get variables from config
call config.bat

::Combine steam executable path
set steamcmd_executable=%steamcmd_dir%\steamcmd.exe

:: Update server
%steamcmd_executable% +login anonymous +force_install_dir %installation_directory% +app_update %appId% +quit

::If there was en error - pause application
if ERRORLEVEL 2 pause