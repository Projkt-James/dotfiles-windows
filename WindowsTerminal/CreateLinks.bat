@ECHO OFF
echo Linking WindowsTerminal Settings.....
echo. 
echo Version 1.0
echo.

SET TerminalPath=%APPDATA%\..\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe
SET LocalStatePath=%TerminalPath%\LocalState
SET RoamingStatePath=%TerminalPath%\RoamingState

echo [LINKING FILE] ubuntu.png
echo.
echo Removing existing file or linked directory...
del %RoamingStatePath%\ubuntu.png
rmdir %RoamingStatePath%\ubuntu.png
echo.
echo Copy new icon files across...
copy %cd%\ubuntu.png %RoamingStatePath%\ubuntu.png 
echo.

echo [LINKING FILE] settings.json
echo.
echo Removing existing file or linked directory...
del %LocalStatePath%\settings.json
rmdir %LocalStatePath%\settings.json
echo.
echo Generating new symbolic link...
MKLINK %LocalStatePath%\settings.json %cd%\settings.json
echo.

echo.
echo Contine To Complete Process
echo ----------------------------
Pause