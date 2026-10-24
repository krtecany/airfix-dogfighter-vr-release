@echo off
rem gtVR - VR mod for Airfix Dogfighter: installs / updates the mod and the Czech translation.
rem Put this file into the Airfix Dogfighter folder (next to Dogfighter.exe) and double-click it.
setlocal
cd /d "%~dp0"
set "BASE=https://raw.githubusercontent.com/krtecany/airfix-dogfighter-vr-release/main"

if not exist "Dogfighter.exe" (
    echo This file must be in the Airfix Dogfighter folder ^(next to Dogfighter.exe^).
    goto end
)
tasklist /fi "imagename eq Dogfighter.exe" 2>nul | "%SystemRoot%\System32\find.exe" /i "Dogfighter.exe" >nul
if not errorlevel 1 (
    echo Please close the game first.
    goto end
)
where curl >nul 2>nul || (echo curl not found ^(Windows 10 or newer needed^). & goto end)

echo Downloading gtVR...
call :dl gtVR.dll || goto fail
call :dl version.txt
call :dl openvr_api.dll || goto fail
call :dl OpenVR-LICENSE.txt
call :dl gtVRcz.exe || goto fail
rem keep your own settings
if not exist "gtVR.ini" call :dl gtVR.ini

rem Czech translation: our texts; gtVRcz.exe builds Czech.loc, the fonts with Czech letters and the
rem language package Czech.up from your own game files (English.up, Resource.up)
echo Downloading the Czech translation...
if exist "gtVR_czech" rmdir /s /q "gtVR_czech"
mkdir "gtVR_czech\texts"
for %%f in (Czech.utf8.loc menu.txt texts/briefings.txt texts/medals.txt texts/history.txt texts/weapons.txt) do (
    call :czfile %%f || goto czfail
)
"%~dp0gtVRcz.exe" gtVR_czech || goto czfail
goto done
:czfail
echo The Czech translation could not be installed (the VR mod itself is installed).
:done

echo.
if exist version.txt (echo Installed: & type version.txt)
echo.
echo Done. Start Dogfighter.exe and in the setup window choose
echo   - the driver "Direct3D VR"
echo   - the language "Czech" for the Czech translation (or keep English)
goto end

rem czfile: one file from czech/ into gtVR_czech
:czfile
set "REL=%~1"
call :dl "czech/%REL%" "gtVR_czech\%REL:/=\%"
exit /b

rem dl: download a file of the release (optional second argument: local file name)
:dl
set "CODE="
set "LOCAL=%~2"
if "%LOCAL%"=="" set "LOCAL=%~1"
for /f %%c in ('curl -sSL -w "%%{http_code}" -o "%LOCAL%.download" "%BASE%/%~1"') do set "CODE=%%c"
if not "%CODE%"=="200" (
    echo Download of %~1 failed: HTTP %CODE%
    del "%LOCAL%.download" 2>nul
    exit /b 1
)
move /y "%LOCAL%.download" "%LOCAL%" >nul
echo   %LOCAL%
exit /b 0

:fail
echo.
echo Update failed. Check your internet connection and try again.

:end
echo.
pause
