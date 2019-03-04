@@echo off

rem
rem switchcp.bat
rem
rem Written by: Remino <remi@remino.net>
rem Written on: 2019-03-04
rem
rem Prepare new microSD card for the Switch by recreating
rem the directory structure and copy the files from the source
rem directory to the destination directory.
rem
rem Tested only on Windows 10.
rem
rem Disclaimer: I assume no responsability. Use this script
rem at your own risk.
rem

setlocal enableextensions enabledelayedexpansion

if [%2]==[] goto usage

set dir=
set "source=%1"
set "dest=%2"

call :copy %source%

for /f %%d in ('dir /a:d /b /o:n /s %source%') do call :copy %%d
goto end

:copy
set "from=%1"
set "to=!from:%source%=%dest%!"
echo === %from% =^> %to%
if not exist %to% mkdir %to%
if not exist %to% goto failed
copy /y %from%\* %to%\
goto :EOF

:failed
echo Failed to create directory or to copy files within. Aborting.
goto :EOF

:usage
echo Usage: switchcp.bat source dest
echo Example: switchcp.bat D:\Nintendo F:\Nintendo
echo.
echo Prepare new microSD card for the Switch by recreating
echo the directory structure and copy the files from the source
echo directory to the destination directory.
echo.
echo WARNING: This will override files already on the card.
echo.
echo Also, interrupting and restarting the process will restart it
echo from the beginning. There is no resume.
echo.
goto end

:end
