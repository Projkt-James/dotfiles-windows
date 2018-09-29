@ECHO OFF
echo Linking VSCode JSON Files.....
echo. 
echo Version 0.1
echo.

SET VSCodePath=%APPDATA%\Code\User
SET dotfilesPath=%HOMEPATH%\.dotfiles\VSCode

echo [LINKING FILE] settings.json
echo.
echo Removing existing file or linked directory...
del %VSCodePath%\settings.json
rmdir %VSCodePath%\settings.json
echo.
echo Generating new symbolic link...
MKLINK %VSCodePath%\settings.json %dotfilesPath%\settings.json
echo.

echo [LINKING FILE] keybindings.json
echo.
echo Removing existing file or linked directory...
del %VSCodePath%\keybindings.json
rmdir %VSCodePath%\keybindings.json
echo.
echo Generating new symbolic link...
MKLINK %VSCodePath%\keybindings.json %dotfilesPath%\keybindings.json
echo.

echo [LINKING DIR] snippets
echo.
echo Removing existing directory or linked directory...
rmdir %VSCodePath%\snippets
echo.
echo Generating new symbolic link...
MKLINK /d %VSCodePath%\snippets %dotfilesPath%\snippets
echo.

echo.
echo Contine To Complete Process
echo ----------------------------
Pause